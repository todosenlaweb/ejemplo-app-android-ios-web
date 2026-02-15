//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SubmitAnswer200Response {
  /// Returns a new [SubmitAnswer200Response] instance.
  SubmitAnswer200Response({
    this.isComplete,
    this.isCorrect,
    this.shouldShowTip,
    this.question,
    this.score,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isComplete;

  /// (HU-12) Solo presente si gradeMode es \"instant\"
  bool? isCorrect;

  /// (HU-13) Indica si debe mostrarse un tip según configuración tipEveryX
  bool? shouldShowTip;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Question? question;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Score? score;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SubmitAnswer200Response &&
    other.isComplete == isComplete &&
    other.isCorrect == isCorrect &&
    other.shouldShowTip == shouldShowTip &&
    other.question == question &&
    other.score == score;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (isComplete == null ? 0 : isComplete!.hashCode) +
    (isCorrect == null ? 0 : isCorrect!.hashCode) +
    (shouldShowTip == null ? 0 : shouldShowTip!.hashCode) +
    (question == null ? 0 : question!.hashCode) +
    (score == null ? 0 : score!.hashCode);

  @override
  String toString() => 'SubmitAnswer200Response[isComplete=$isComplete, isCorrect=$isCorrect, shouldShowTip=$shouldShowTip, question=$question, score=$score]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.isComplete != null) {
      json[r'isComplete'] = this.isComplete;
    } else {
      json[r'isComplete'] = null;
    }
    if (this.isCorrect != null) {
      json[r'isCorrect'] = this.isCorrect;
    } else {
      json[r'isCorrect'] = null;
    }
    if (this.shouldShowTip != null) {
      json[r'shouldShowTip'] = this.shouldShowTip;
    } else {
      json[r'shouldShowTip'] = null;
    }
    if (this.question != null) {
      json[r'question'] = this.question;
    } else {
      json[r'question'] = null;
    }
    if (this.score != null) {
      json[r'score'] = this.score;
    } else {
      json[r'score'] = null;
    }
    return json;
  }

  /// Returns a new [SubmitAnswer200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SubmitAnswer200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SubmitAnswer200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SubmitAnswer200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SubmitAnswer200Response(
        isComplete: mapValueOfType<bool>(json, r'isComplete'),
        isCorrect: mapValueOfType<bool>(json, r'isCorrect'),
        shouldShowTip: mapValueOfType<bool>(json, r'shouldShowTip'),
        question: Question.fromJson(json[r'question']),
        score: Score.fromJson(json[r'score']),
      );
    }
    return null;
  }

  static List<SubmitAnswer200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SubmitAnswer200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SubmitAnswer200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SubmitAnswer200Response> mapFromJson(dynamic json) {
    final map = <String, SubmitAnswer200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SubmitAnswer200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SubmitAnswer200Response-objects as value to a dart map
  static Map<String, List<SubmitAnswer200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SubmitAnswer200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SubmitAnswer200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

