//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FinishAttemptRequest {
  /// Returns a new [FinishAttemptRequest] instance.
  FinishAttemptRequest({
    required this.quizId,
    required this.attemptId,
  });

  String quizId;

  String attemptId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FinishAttemptRequest &&
    other.quizId == quizId &&
    other.attemptId == attemptId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (quizId.hashCode) +
    (attemptId.hashCode);

  @override
  String toString() => 'FinishAttemptRequest[quizId=$quizId, attemptId=$attemptId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'quizId'] = this.quizId;
      json[r'attemptId'] = this.attemptId;
    return json;
  }

  /// Returns a new [FinishAttemptRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FinishAttemptRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FinishAttemptRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FinishAttemptRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FinishAttemptRequest(
        quizId: mapValueOfType<String>(json, r'quizId')!,
        attemptId: mapValueOfType<String>(json, r'attemptId')!,
      );
    }
    return null;
  }

  static List<FinishAttemptRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FinishAttemptRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FinishAttemptRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FinishAttemptRequest> mapFromJson(dynamic json) {
    final map = <String, FinishAttemptRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FinishAttemptRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FinishAttemptRequest-objects as value to a dart map
  static Map<String, List<FinishAttemptRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FinishAttemptRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FinishAttemptRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'quizId',
    'attemptId',
  };
}

