import 'dart:convert';
import 'dart:developer';

import 'package:fpdart/fpdart.dart';
import 'package:image_picker/image_picker.dart';
import 'package:openmic_client/openmic_client.dart';
import 'package:openmic_flutter/core/utils/string_utils.dart';

class AssetService {
  final Client client;

  AssetService(this.client);

  Future<Either<String, String>> uploadImage(XFile image) async {
    final remotePath = "${StringUtils.generateRandomString(16)}/.${image.name}";

    final uploadDescription =
        await client.asset.getUploadDescription(remotePath);
    if (uploadDescription == null) {
      return left("Could not get upload description");
    }

    final uploader = FileUploader(uploadDescription);
    final stream = image.openRead();
    final length = (await image.readAsBytes()).length;
    await uploader.upload(stream, length);

    final success = await client.asset.verifyUpload(remotePath);
    if (!success) {
      return left("Could not complete upload");
    }

    try {
      final Map<String, dynamic> decodedDescription =
          jsonDecode(uploadDescription);

      if (!decodedDescription.containsKey('url')) {
        log("Decoded description does not contain 'url': $decodedDescription");
        return left("Could not get url of the file");
      }

      return right("${decodedDescription['url']}/$remotePath");
    } catch (e) {
      log("Error decoding upload description: $e");
      return left("Invalid upload description response");
    }
  }

  //   final Map<String, dynamic> decodedDescription =
  //       jsonDecode(uploadDescription);
  //   if (!decodedDescription.containsKey('url')) {
  //     return left("Could not get url of the file");
  //   }

  //   return right("${decodedDescription['url']}/$remotePath");
  // }
}
