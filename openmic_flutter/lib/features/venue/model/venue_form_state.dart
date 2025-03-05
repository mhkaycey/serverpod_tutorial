import 'package:openmic_client/openmic_client.dart';

class VenueFormState {
  final Venue venue;
  final bool isLoading;
  final String? error;

  VenueFormState({
    required this.venue,
    required this.isLoading,
    this.error,
  });

  static Venue initialVenue({required int userId}) => Venue(
        ownerId: userId,
        hubId: 1,
        name: '',
        primaryImageUrl: '',
        bio: '',
        address: '',
        websiteUrl: '',
        instagramUrl: '',
        latitude: 0,
        longitude: 0,
        isVerified: false,
      );

  factory VenueFormState.initial({required int userId}) => VenueFormState(
        venue: initialVenue(userId: userId),
        isLoading: false,
      );

  factory VenueFormState.failure({required String error}) => VenueFormState(
        venue: initialVenue(userId: 0),
        isLoading: false,
        error: error,
      );

  VenueFormState loading() => VenueFormState(
        venue: venue,
        isLoading: true,
        error: null,
      );

  VenueFormState success(Venue venue) => VenueFormState(
        venue: venue,
        isLoading: false,
        error: null,
      );

  VenueFormState failure(String error) => VenueFormState(
        venue: venue,
        isLoading: false,
        error: error,
      );

  VenueFormState update(Venue venue) => VenueFormState(
        venue: venue,
        isLoading: false,
        error: null,
      );

  VenueFormState clear({required int userId}) =>
      VenueFormState.initial(userId: userId);
}
