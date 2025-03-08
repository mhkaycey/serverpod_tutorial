import 'package:serverpod/serverpod.dart';

class AssetEndpoint extends Endpoint {
  Future<String?> getUploadDescription(Session session, String path) async {
    try {
      print("Attempting to verify upload for path: $path");
      final result = await session.storage.createDirectFileUploadDescription(
        storageId: 'public',
        path: path,
      );
      print("upload description result: $result");
      return result;
    } catch (e, sk) {
      print("Error during uploading description: $e $sk");
      return 'No description';
    }
  }

  Future<bool> verifyUpload(Session session, String path) async {
    try {
      print("Attempting to verify upload for path: $path");
      final result = await session.storage.verifyDirectFileUpload(
        storageId: 'public',
        path: path,
      );
      print("Verification result: $result");
      return result;
    } catch (e, sk) {
      print("Error during verification: $e $sk");
      return false;
    }
  }
}
