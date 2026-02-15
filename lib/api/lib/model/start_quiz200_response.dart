//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StartQuiz200Response {
  /// Returns a new [StartQuiz200Response] instance.
  StartQuiz200Response({
    this.attemptId,
    this.question,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? attemptId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Question? question;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StartQuiz200Response &&
    other.attemptId == attemptId &&
    other.question == question;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (attemptId == null ? 0 : attemptId!.hashCode) +
    (question == null ? 0 : question!.hashCode);

  @override
  String toString() => 'StartQuiz200Response[attemptId=$attemptId, question=$question]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.attemptId != null) {
      json[r'attemptId'] = this.attemptId;
    } else {
      json[r'attemptId'] = null;
    }
    if (this.question != null) {
      json[r'question'] = this.question;
    } else {
      json[r'question'] = null;
    }
    return json;
  }

  /// Returns a new [StartQuiz200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StartQuiz200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StartQuiz200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StartQuiz200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StartQuiz200Response(
        attemptId: mapValueOfType<String>(json, r'attemptId'),
        question: Question.fromJson(json[r'question']),
      );
    }
    return null;
  }

  static List<StartQuiz200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StartQuiz200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StartQuiz200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StartQuiz200Response> mapFromJson(dynamic json) {
    final map = <String, StartQuiz200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StartQuiz200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StartQuiz200Response-objects as value to a dart map
  static Map<String, List<StartQuiz200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StartQuiz200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StartQuiz200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

