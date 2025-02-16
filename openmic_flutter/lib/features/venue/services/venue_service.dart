import 'dart:developer';

import 'package:fpdart/fpdart.dart';
import 'package:openmic_client/openmic_client.dart';

class VenueService {
  final Client client;

  VenueService(this.client);

  Future<Either<String, VenueList>> list({
    required int page,
    required int limit,
  }) async {
    try {
      final result = await client.venue.list(page: page, limit: limit);
      return Right(result);
    } catch (e) {
      return Left(e.toString());
    }
  }

  Future<Either<String, Venue>> retrieve(int id) async {
    try {
      final result = await client.venue.retrieve(id);

      if (result == null) {
        return left("Could not get venue");
      }
      return Right(result);
    } catch (e) {
      return Left(e.toString());
    }
  }

  Future<Either<String, Venue>> save(Venue venue) async {
    try {
      final response = await client.venue.save(venue);

      if (response == null) {
        return left("Could not save venue");
      }
      return Right(response);
    } catch (e, sk) {
      log("$e, $sk");
      return Left(e.toString());
    }
  }
}
