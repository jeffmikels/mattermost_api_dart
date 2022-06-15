//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mattermost.api;

class MmOpenInteractiveDialogRequestDialog {
  /// Returns a new [MmOpenInteractiveDialogRequestDialog] instance.
  MmOpenInteractiveDialogRequestDialog({
    this.callbackId,
    required this.title,
    this.introductionText,
    this.elements = const [],
    this.submitLabel,
    this.notifyOnCancel,
    this.state,
  });

  /// Set an ID that will be included when the dialog is submitted
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? callbackId;

  /// Title of the dialog
  String title;

  /// Markdown formatted introductory paragraph
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? introductionText;

  /// Input elements, see https://docs.mattermost.com/developer/interactive-dialogs.html#elements
  List<Map> elements;

  /// Label on the submit button
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? submitLabel;

  /// Set true to receive payloads when user cancels a dialog
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? notifyOnCancel;

  /// Set some state to be echoed back with the dialog submission
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? state;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MmOpenInteractiveDialogRequestDialog &&
          other.callbackId == callbackId &&
          other.title == title &&
          other.introductionText == introductionText &&
          other.elements == elements &&
          other.submitLabel == submitLabel &&
          other.notifyOnCancel == notifyOnCancel &&
          other.state == state;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (callbackId == null ? 0 : callbackId!.hashCode) +
      (title.hashCode) +
      (introductionText == null ? 0 : introductionText!.hashCode) +
      (elements.hashCode) +
      (submitLabel == null ? 0 : submitLabel!.hashCode) +
      (notifyOnCancel == null ? 0 : notifyOnCancel!.hashCode) +
      (state == null ? 0 : state!.hashCode);

  @override
  String toString() =>
      'MmOpenInteractiveDialogRequestDialog[callbackId=$callbackId, title=$title, introductionText=$introductionText, elements=$elements, submitLabel=$submitLabel, notifyOnCancel=$notifyOnCancel, state=$state]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (callbackId != null) {
      _json[r'callback_id'] = callbackId;
    }
    _json[r'title'] = title;
    if (introductionText != null) {
      _json[r'introduction_text'] = introductionText;
    }
    _json[r'elements'] = elements;
    if (submitLabel != null) {
      _json[r'submit_label'] = submitLabel;
    }
    if (notifyOnCancel != null) {
      _json[r'notify_on_cancel'] = notifyOnCancel;
    }
    if (state != null) {
      _json[r'state'] = state;
    }
    return _json;
  }

  /// Returns a new [MmOpenInteractiveDialogRequestDialog] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MmOpenInteractiveDialogRequestDialog? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(
              json.containsKey(key), 'Required key "MmOpenInteractiveDialogRequestDialog[$key]" is missing from JSON.');
          assert(
              json[key] != null, 'Required key "MmOpenInteractiveDialogRequestDialog[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MmOpenInteractiveDialogRequestDialog(
        callbackId: mapValueOfType<String>(json, r'callback_id'),
        title: mapValueOfType<String>(json, r'title')!,
        introductionText: mapValueOfType<String>(json, r'introduction_text'),
        elements: json[r'elements'] ?? const [],
        submitLabel: mapValueOfType<String>(json, r'submit_label'),
        notifyOnCancel: mapValueOfType<bool>(json, r'notify_on_cancel'),
        state: mapValueOfType<String>(json, r'state'),
      );
    }
    return null;
  }

  static List<MmOpenInteractiveDialogRequestDialog>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MmOpenInteractiveDialogRequestDialog>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MmOpenInteractiveDialogRequestDialog.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MmOpenInteractiveDialogRequestDialog> mapFromJson(dynamic json) {
    final map = <String, MmOpenInteractiveDialogRequestDialog>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmOpenInteractiveDialogRequestDialog.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MmOpenInteractiveDialogRequestDialog-objects as value to a dart map
  static Map<String, List<MmOpenInteractiveDialogRequestDialog>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MmOpenInteractiveDialogRequestDialog>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MmOpenInteractiveDialogRequestDialog.listFromJson(
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
    'title',
    'elements',
  };
}
