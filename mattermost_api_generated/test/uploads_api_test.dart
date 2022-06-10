//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:mattermost_api/api.dart';
import 'package:test/test.dart';


/// tests for UploadsApi
void main() {
  // final instance = UploadsApi();

  group('tests for UploadsApi', () {
    // Create an upload
    //
    // Creates a new upload session.  __Minimum server version__: 5.28 ##### Permissions Must have `upload_file` permission. 
    //
    //Future<UploadSession> createUpload(CreateUploadRequest createUploadRequest) async
    test('test createUpload', () async {
      // TODO
    });

    // Get an upload session
    //
    // Gets an upload session that has been previously created.  ##### Permissions Must be logged in as the user who created the upload session. 
    //
    //Future getUpload(String uploadId) async
    test('test getUpload', () async {
      // TODO
    });

    // Perform a file upload
    //
    // Starts or resumes a file upload.   To resume an existing (incomplete) upload, data should be sent starting from the offset specified in the upload session object.  The request body can be in one of two formats: - Binary file content streamed in request's body - multipart/form-data  ##### Permissions Must be logged in as the user who created the upload session. 
    //
    //Future<FileInfo> uploadData(String uploadId) async
    test('test uploadData', () async {
      // TODO
    });

  });
}
