//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmUpdateChannelRequest {
  /// Returns a new [MmUpdateChannelRequest] instance.
  MmUpdateChannelRequest({
    required this.id,
    this.name,
    this.displayName,
    this.purpose,
    this.header,
  });

  /// The channel's id, not updatable
  String id;

  /// The unique handle for the channel, will be present in the channel URL
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// The non-unique UI name for the channel
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayName;

  /// A short description of the purpose of the channel
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? purpose;

  /// Markdown-formatted text to display in the header of the channel
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? header;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmUpdateChannelRequest &&
          other.id == id &&
          other.name == name &&
          other.displayName == displayName &&
          other.purpose == purpose &&
          other.header == header;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id.hashCode) +
      (name == null ? 0 : name!.hashCode) +
      (displayName == null ? 0 : displayName!.hashCode) +
      (purpose == null ? 0 : purpose!.hashCode) +
      (header == null ? 0 : header!.hashCode);

  @override
  String toString() =>
      'MmUpdateChannelRequest[id=$id, name=$name, displayName=$displayName, purpose=$purpose, header=$header]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'id'] = id;
    if (name != null) {
      _json[r'name'] = name;
    }
    if (displayName != null) {
      _json[r'display_name'] = displayName;
    }
    if (purpose != null) {
      _json[r'purpose'] = purpose;
    }
    if (header != null) {
      _json[r'header'] = header;
    }
    return _json;
  }

  /// Returns a new [MmUpdateChannelRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmUpdateChannelRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MmUpdateChannelRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MmUpdateChannelRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmUpdateChannelRequest(
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name'),
        displayName: mapValueOfType<String>(json, r'display_name'),
        purpose: mapValueOfType<String>(json, r'purpose'),
        header: mapValueOfType<String>(json, r'header'),
      );
    }
    return null;
  }

  static List<MmUpdateChannelRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmUpdateChannelRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmUpdateChannelRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmUpdateChannelRequest> mapFromJson(dynamic json) {
    final map = <String, MmUpdateChannelRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmUpdateChannelRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmUpdateChannelRequest-objects as value to a dart map
  static Map<String, List<MmUpdateChannelRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmUpdateChannelRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmUpdateChannelRequest.listFromJson(
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
  static const requiredKeys = <String>{
    'id',
  };
}
