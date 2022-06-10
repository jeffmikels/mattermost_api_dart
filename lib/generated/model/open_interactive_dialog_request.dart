//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class OpenInteractiveDialogRequest {
  /// Returns a new [OpenInteractiveDialogRequest] instance.
  OpenInteractiveDialogRequest({
    required this.triggerId,
    required this.url,
    required this.dialog,
  });

  /// Trigger ID provided by other action
  String triggerId;

  /// The URL to send the submitted dialog payload to
  String url;

  OpenInteractiveDialogRequestDialog dialog;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OpenInteractiveDialogRequest &&
     other.triggerId == triggerId &&
     other.url == url &&
     other.dialog == dialog;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (triggerId.hashCode) +
    (url.hashCode) +
    (dialog.hashCode);

  @override
  String toString() => 'OpenInteractiveDialogRequest[triggerId=$triggerId, url=$url, dialog=$dialog]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'trigger_id'] = triggerId;
      _json[r'url'] = url;
      _json[r'dialog'] = dialog;
    return _json;
  }

  /// Returns a new [OpenInteractiveDialogRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OpenInteractiveDialogRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OpenInteractiveDialogRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OpenInteractiveDialogRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OpenInteractiveDialogRequest(
        triggerId: mapValueOfType<String>(json, r'trigger_id')!,
        url: mapValueOfType<String>(json, r'url')!,
        dialog: OpenInteractiveDialogRequestDialog.fromJson(json[r'dialog'])!,
      );
    }
    return null;
  }

  static List<OpenInteractiveDialogRequest>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OpenInteractiveDialogRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OpenInteractiveDialogRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OpenInteractiveDialogRequest> mapFromJson(dynamic json) {
    final map = <String, OpenInteractiveDialogRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OpenInteractiveDialogRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OpenInteractiveDialogRequest-objects as value to a dart map
  static Map<String, List<OpenInteractiveDialogRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OpenInteractiveDialogRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OpenInteractiveDialogRequest.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'trigger_id',
    'url',
    'dialog',
  };
}

