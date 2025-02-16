import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openmic_flutter/core/providers/client_provider.dart';
import 'package:openmic_flutter/features/venue/services/venue_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'venue_service_provider.g.dart';

@riverpod
VenueService venueService(Ref ref) {
  return VenueService(ref.read(clientProvider));
}
