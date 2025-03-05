import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:openmic_flutter/core/utils/toast_utils.dart';
import 'package:openmic_flutter/features/asset/providers/asset_service_provider.dart';

class AssetUploadComponent extends ConsumerWidget {
  const AssetUploadComponent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CupertinoButton(
      child: Text("Upload Image"),
      onPressed: () async {
        final picker = ImagePicker();
        final image = await picker.pickImage(source: ImageSource.camera);
        if (image == null) {
          return;
        }

        final result = await ref.read(assetServiceProvider).uploadImage(image);
        result.fold((error) {
          ToastUtils.show(context, error);
        }, (imageUrl) {
          print("Image uploaded: $imageUrl");
        });
      },
    );
  }
}
