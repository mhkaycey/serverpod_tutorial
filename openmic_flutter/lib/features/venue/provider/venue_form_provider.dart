// ignore_for_file: avoid_public_notifier_properties
import 'package:flutter/material.dart';
import 'package:openmic_client/openmic_client.dart';
import 'package:openmic_flutter/features/auth/models/auth_state.dart';
import 'package:openmic_flutter/features/auth/providers/auth_provider.dart';
import 'package:openmic_flutter/features/venue/model/venue_form_state.dart';
import 'package:openmic_flutter/features/venue/provider/venue_details_provider.dart';
import 'package:openmic_flutter/features/venue/provider/venue_list_provider.dart';
import 'package:openmic_flutter/features/venue/provider/venue_service_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'venue_form_provider.g.dart';

@Riverpod(keepAlive: true)
class VenueForm extends _$VenueForm {
  @override
  VenueFormState build() {
    final authState = ref.watch(authProvider);

    if (authState is AuthStateSuccess) {
      if (authState.user.id != null) {
        return VenueFormState.initial(userId: authState.user.id!);
      }
    }

    return VenueFormState.failure(error: "Not authenticated");
  }

  final formkey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final bioController = TextEditingController();
  final shortAddressController = TextEditingController();
  final longAddressController = TextEditingController();
  final websiteUrlController = TextEditingController();
  final instagramUrlController = TextEditingController();

  // void setName(String name) {
  //   nameController.text = name.trim();
  // }
  void setFromGooglePlace(GooglePlace place) {
    nameController.text = place.name.trim();
    state = state.update(
      state.venue.copyWith(
        latitude: place.latitude,
        longitude: place.longitude,
        address: place.address,
        googlePlaceId: place.placeId,
      ),
    );
  }

  void _refreshController() {
    nameController.text = state.venue.name;
    bioController.text = state.venue.bio;
    websiteUrlController.text = state.venue.websiteUrl;
    instagramUrlController.text = state.venue.instagramUrl;
  }

  Future<void> load(int venueId) async {
    final result = await ref.read(venueServiceProvider).retrieve(venueId);

    result.fold((error) {
      state = state.failure(error);
    }, (venue) {
      state = state.success(venue);
      _refreshController();
    });
  }

  Future<bool> submit() async {
    if (!formkey.currentState!.validate()) {
      state = state.failure("Please fix the errors");
      return false;
    }
    final venueData = state.venue.copyWith(
      name: nameController.text.trim(),
      bio: bioController.text.trim(),
      websiteUrl: websiteUrlController.text.trim(),
      instagramUrl: instagramUrlController.text.trim(),
    );
    state = state.loading();
    final result = await ref.read(venueServiceProvider).save(venueData);

    return result.fold((error) {
      state = state.failure(error);
      return false;
    }, (venue) {
      state = state.success(venue);
      ref.read(venueListProvider.notifier).refresh();
      if (venue.id != null) {
        ref.invalidate(venueDetailProvider(venue.id!));
      }
      clear();
      return true;
    });
  }

  void clear() {
    state = build();
    _refreshController();
  }
}
