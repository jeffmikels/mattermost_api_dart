//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmApiException implements Exception {
  MmApiException(this.code, this.message);

  MmApiException.withInner(this.code, this.message, this.innerException, this.stackTrace);

  int code = 0;
  String? message;
  Exception? innerException;
  StackTrace? stackTrace;

  @override
  String toString() {
    if (message == null) {
      return 'MmApiException';
    }
    if (innerException == null) {
      return 'MmApiException $code: $message';
    }
    return 'MmApiException $code: $message (Inner exception: $innerException)\n\n$stackTrace';
  }
}
