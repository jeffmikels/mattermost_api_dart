//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmCommandResponse {
  /// Returns a new [MmCommandResponse] instance.
  MmCommandResponse({
    this.responseType,
    this.text,
    this.username,
    this.iconURL,
    this.gotoLocation,
    this.attachments = const [],
  });

  /// The response type either in_channel or ephemeral
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? responseType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? text;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? username;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? iconURL;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gotoLocation;

  List<MmSlackAttachment> attachments;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmCommandResponse &&
          other.responseType == responseType &&
          other.text == text &&
          other.username == username &&
          other.iconURL == iconURL &&
          other.gotoLocation == gotoLocation &&
          other.attachments == attachments;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (responseType == null ? 0 : responseType!.hashCode) +
      (text == null ? 0 : text!.hashCode) +
      (username == null ? 0 : username!.hashCode) +
      (iconURL == null ? 0 : iconURL!.hashCode) +
      (gotoLocation == null ? 0 : gotoLocation!.hashCode) +
      (attachments.hashCode);

  @override
  String toString() =>
      'MmCommandResponse[responseType=$responseType, text=$text, username=$username, iconURL=$iconURL, gotoLocation=$gotoLocation, attachments=$attachments]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (responseType != null) {
      _json[r'ResponseType'] = responseType;
    }
    if (text != null) {
      _json[r'Text'] = text;
    }
    if (username != null) {
      _json[r'Username'] = username;
    }
    if (iconURL != null) {
      _json[r'IconURL'] = iconURL;
    }
    if (gotoLocation != null) {
      _json[r'GotoLocation'] = gotoLocation;
    }
    _json[r'Attachments'] = attachments;
    return _json;
  }

  /// Returns a new [MmCommandResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmCommandResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmCommandResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmCommandResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmCommandResponse(
        responseType: mapValueOfType<String>(json, r'ResponseType'),
        text: mapValueOfType<String>(json, r'Text'),
        username: mapValueOfType<String>(json, r'Username'),
        iconURL: mapValueOfType<String>(json, r'IconURL'),
        gotoLocation: mapValueOfType<String>(json, r'GotoLocation'),
        attachments: MmSlackAttachment.listFromJson(json[r'Attachments']) ?? const [],
      );
    }
    return null;
  }

  static List<MmCommandResponse>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmCommandResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmCommandResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmCommandResponse> mapFromJson(dynamic json) {
    final map = <String, MmCommandResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmCommandResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmCommandResponse-objects as value to a dart map
  static Map<String, List<MmCommandResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmCommandResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmCommandResponse.listFromJson(
          entry.value,
          growable: growable,
        );
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{};
}
