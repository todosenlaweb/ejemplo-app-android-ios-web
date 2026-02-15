//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SubmitAnswerRequest {
  /// Returns a new [SubmitAnswerRequest] instance.
  SubmitAnswerRequest({
    required this.quizId,
    required this.attemptId,
    required this.questionId,
    required this.selectedOptionId,
  });

  String quizId;

  String attemptId;

  String questionId;

  String selectedOptionId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SubmitAnswerRequest &&
    other.quizId == quizId &&
    other.attemptId == attemptId &&
    other.questionId == questionId &&
    other.selectedOptionId == selectedOptionId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (quizId.hashCode) +
    (attemptId.hashCode) +
    (questionId.hashCode) +
    (selectedOptionId.hashCode);

  @override
  String toString() => 'SubmitAnswerRequest[quizId=$quizId, attemptId=$attemptId, questionId=$questionId, selectedOptionId=$selectedOptionId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'quizId'] = this.quizId;
      json[r'attemptId'] = this.attemptId;
      json[r'questionId'] = this.questionId;
      json[r'selectedOptionId'] = this.selectedOptionId;
    return json;
  }

  /// Returns a new [SubmitAnswerRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SubmitAnswerRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SubmitAnswerRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SubmitAnswerRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SubmitAnswerRequest(
        quizId: mapValueOfType<String>(json, r'quizId')!,
        attemptId: mapValueOfType<String>(json, r'attemptId')!,
        questionId: mapValueOfType<String>(json, r'questionId')!,
        selectedOptionId: mapValueOfType<String>(json, r'selectedOptionId')!,
      );
    }
    return null;
  }

  static List<SubmitAnswerRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SubmitAnswerRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SubmitAnswerRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SubmitAnswerRequest> mapFromJson(dynamic json) {
    final map = <String, SubmitAnswerRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SubmitAnswerRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SubmitAnswerRequest-objects as value to a dart map
  static Map<String, List<SubmitAnswerRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SubmitAnswerRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SubmitAnswerRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'quizId',
    'attemptId',
    'questionId',
    'selectedOptionId',
  };
}

