//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MMCreateCommandRequest {
  /// Returns a new [MMCreateCommandRequest] instance.
  MMCreateCommandRequest({
    required this.teamId,
    required this.method,
    required this.trigger,
    required this.url,
  });

  /// Team ID to where the command should be created
  String teamId;

  /// `'P'` for post request, `'G'` for get request
  String method;

  /// Activation word to trigger the command
  String trigger;

  /// The URL that the command will make the request
  String url;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MMCreateCommandRequest &&
          other.teamId == teamId &&
          other.method == method &&
          other.trigger == trigger &&
          other.url == url;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (teamId.hashCode) + (method.hashCode) + (trigger.hashCode) + (url.hashCode);

  @override
  String toString() => 'MMCreateCommandRequest[teamId=$teamId, method=$method, trigger=$trigger, url=$url]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'team_id'] = teamId;
    _json[r'method'] = method;
    _json[r'trigger'] = trigger;
    _json[r'url'] = url;
    return _json;
  }

  /// Returns a new [MMCreateCommandRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MMCreateCommandRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MMCreateCommandRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MMCreateCommandRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MMCreateCommandRequest(
        teamId: mapValueOfType<String>(json, r'team_id')!,
        method: mapValueOfType<String>(json, r'method')!,
        trigger: mapValueOfType<String>(json, r'trigger')!,
        url: mapValueOfType<String>(json, r'url')!,
      );
    }
    return null;
  }

  static List<MMCreateCommandRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MMCreateCommandRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MMCreateCommandRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MMCreateCommandRequest> mapFromJson(dynamic json) {
    final map = <String, MMCreateCommandRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMCreateCommandRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MMCreateCommandRequest-objects as value to a dart map
  static Map<String, List<MMCreateCommandRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MMCreateCommandRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMCreateCommandRequest.listFromJson(
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
    'team_id',
    'method',
    'trigger',
    'url',
  };
}