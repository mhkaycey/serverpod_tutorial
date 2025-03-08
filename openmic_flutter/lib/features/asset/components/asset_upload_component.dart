import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:openmic_flutter/core/utils/toast_utils.dart';
import 'package:openmic_flutter/features/asset/providers/asset_service_provider.dart';

class AssetUploadComponent extends ConsumerWidget {
  const AssetUploadComponent({
    super.key,
    required this.url,
    required this.onComplete,
    required this.label,
  });

  final String url;
  final Function onComplete;
  final String label;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      leading: url.isNotEmpty
          ? Image.network(url, width: 40, height: 40, fit: BoxFit.cover)
          : Icon(Icons.image_not_supported_outlined),
      title: Text(label),
      trailing: CupertinoButton(
        child: Text(url.isEmpty ? "Upload Image" : "Replace Image"),
        onPressed: () async {
          final picker = ImagePicker();
          final image = await picker.pickImage(source: ImageSource.gallery);
          if (image == null) {
            return;
          }

          final result =
              await ref.read(assetServiceProvider).uploadImage(image);
          result.fold((error) {
            ToastUtils.show(context, error);
          }, (imageUrl) {
            onComplete(imageUrl);
          });
        },
      ),
    );
  }
}
