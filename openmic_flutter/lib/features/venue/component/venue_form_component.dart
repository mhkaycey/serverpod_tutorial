import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:openmic_flutter/core/utils/toast_utils.dart';
import 'package:openmic_flutter/core/utils/validation_utils.dart';
import 'package:openmic_flutter/features/asset/components/asset_upload_component.dart';
import 'package:openmic_flutter/features/venue/provider/venue_form_provider.dart';

class VenueFormComponent extends ConsumerWidget {
  const VenueFormComponent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.read(venueFormProvider.notifier);
    final state = ref.watch(venueFormProvider);
    return SingleChildScrollView(
      child: Form(
        key: provider.formkey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: provider.nameController,
              validator: (value) =>
                  ValidationUtils.formValidatorNotEmpty(value, "name"),
              decoration: InputDecoration(
                label: Text("Venue Name"),
              ),
            ),
            AssetUploadComponent(
              url: state.venue.primaryImageUrl,
              onComplete: (imageUrl) {
                provider.setPrimaryImageUrl(imageUrl);
              },
              label: 'Venue Image',
            ),
            TextFormField(
              controller: provider.bioController,
              validator: (value) =>
                  ValidationUtils.formValidatorNotEmpty(value, "Bio"),
              decoration: InputDecoration(
                label: Text("Bio"),
              ),
              minLines: 3,
              maxLines: 6,
            ),
            TextFormField(
              controller: provider.websiteUrlController,
              validator: (value) => ValidationUtils.formValidatorUrl(
                value,
                "Website Url.",
                valueRequired: false,
              ),
              decoration: InputDecoration(
                label: Text("Website URL"),
              ),
            ),
            TextFormField(
              controller: provider.instagramUrlController,
              validator: (value) =>
                  ValidationUtils.formValidatorUrl(value, "Instagram Url"),
              decoration: InputDecoration(
                label: Text("Instagram URL"),
              ),
            ),
            SizedBox(height: 16),
            if (state.error != null)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  state.error!,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.red.shade700),
                ),
              ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () async {
                final success = await provider.submit();

                if (context.mounted) {
                  if (success) {
                    ToastUtils.show(context, "Venue Saved");

                    // ref.read(venueListProvider.notifier).refresh();
                    context.pop();
                  }
                }
              },
              child: Text("Save"),
            )
          ],
        ),
      ),
    );
  }
}
