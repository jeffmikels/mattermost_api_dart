//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MMSendWarnMetricAckRequest {
  /// Returns a new [MMSendWarnMetricAckRequest] instance.
  MMSendWarnMetricAckRequest({
    this.forceAck,
  });

  /// Flag which determines if the ack for the metric warning should be directly stored (without trying to send email first) or not
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? forceAck;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is MMSendWarnMetricAckRequest && other.forceAck == forceAck;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (forceAck == null ? 0 : forceAck!.hashCode);

  @override
  String toString() => 'MMSendWarnMetricAckRequest[forceAck=$forceAck]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (forceAck != null) {
      _json[r'forceAck'] = forceAck;
    }
    return _json;
  }

  /// Returns a new [MMSendWarnMetricAckRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MMSendWarnMetricAckRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MMSendWarnMetricAckRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MMSendWarnMetricAckRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MMSendWarnMetricAckRequest(
        forceAck: mapValueOfType<bool>(json, r'forceAck'),
      );
    }
    return null;
  }

  static List<MMSendWarnMetricAckRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MMSendWarnMetricAckRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MMSendWarnMetricAckRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MMSendWarnMetricAckRequest> mapFromJson(dynamic json) {
    final map = <String, MMSendWarnMetricAckRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMSendWarnMetricAckRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MMSendWarnMetricAckRequest-objects as value to a dart map
  static Map<String, List<MMSendWarnMetricAckRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MMSendWarnMetricAckRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MMSendWarnMetricAckRequest.listFromJson(
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
