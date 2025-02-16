import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:openmic_client/openmic_client.dart';
import 'package:openmic_flutter/core/utils/toast_utils.dart';
import 'package:openmic_flutter/core/utils/validation_utils.dart';
import 'package:openmic_flutter/features/venue/provider/venue_list_provider.dart';
import 'package:openmic_flutter/features/venue/provider/venue_service_provider.dart';

class VenueFormComponent extends ConsumerStatefulWidget {
  final Venue venue;
  const VenueFormComponent({required this.venue, super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _VenueFormComponentState();
}

class _VenueFormComponentState extends ConsumerState<VenueFormComponent> {
  final formkey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final bioController = TextEditingController();
  final shortAddressController = TextEditingController();
  final longAddressController = TextEditingController();
  final websiteUrlController = TextEditingController();
  final instagramUrlController = TextEditingController();
  late Venue venue;

  @override
  void initState() {
    venue = widget.venue;

    nameController.text = venue.name;
    bioController.text = venue.bio;
    shortAddressController.text = venue.shortAddress;
    longAddressController.text = venue.longAddress;
    websiteUrlController.text = venue.websiteUrl;
    instagramUrlController.text = venue.instagramUrl;

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            controller: nameController,
            validator: (value) =>
                ValidationUtils.formValidatorNotEmpty(value, "name"),
            decoration: InputDecoration(
              label: Text("Venue Name"),
            ),
          ),
          TextFormField(
            controller: bioController,
            validator: (value) =>
                ValidationUtils.formValidatorNotEmpty(value, "Bio"),
            decoration: InputDecoration(
              label: Text("Bio"),
            ),
            minLines: 3,
            maxLines: 6,
          ),
          TextFormField(
            controller: websiteUrlController,
            validator: (value) =>
                ValidationUtils.formValidatorNotEmpty(value, "Website Url."),
            decoration: InputDecoration(
              label: Text("Website URL"),
            ),
          ),
          TextFormField(
            controller: instagramUrlController,
            validator: (value) =>
                ValidationUtils.formValidatorNotEmpty(value, "Instagram Url"),
            decoration: InputDecoration(
              label: Text("Instagram URL"),
            ),
            minLines: 3,
            maxLines: 6,
          ),
          SizedBox(height: 32),
          ElevatedButton(
              onPressed: () async {
                if (!formkey.currentState!.validate()) {
                  return;
                }

                final v = venue.copyWith(
                  name: nameController.text.trim(),
                  bio: bioController.text.trim(),
                  websiteUrl: websiteUrlController.text.trim(),
                  instagramUrl: instagramUrlController.text.trim(),
                );

                final result = await ref.read(venueServiceProvider).save(v);
                result.fold((error) {
                  ToastUtils.show(context, error);
                }, (updateVenue) {
                  setState(() {
                    venue = updateVenue;
                  });
                  ToastUtils.show(context, "Venue Saved");

                  ref.read(venueListProvider.notifier).refresh();
                  context.pop();
                });
              },
              child: Text("Save"))
        ],
      ),
    );
  }
}
