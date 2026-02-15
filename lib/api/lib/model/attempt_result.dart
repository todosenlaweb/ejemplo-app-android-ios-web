//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AttemptResult {
  /// Returns a new [AttemptResult] instance.
  AttemptResult({
    this.score,
    this.totalQuestions,
    this.correctAnswers,
    this.timeUsedSeconds,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Score? score;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalQuestions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? correctAnswers;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? timeUsedSeconds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AttemptResult &&
    other.score == score &&
    other.totalQuestions == totalQuestions &&
    other.correctAnswers == correctAnswers &&
    other.timeUsedSeconds == timeUsedSeconds;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (score == null ? 0 : score!.hashCode) +
    (totalQuestions == null ? 0 : totalQuestions!.hashCode) +
    (correctAnswers == null ? 0 : correctAnswers!.hashCode) +
    (timeUsedSeconds == null ? 0 : timeUsedSeconds!.hashCode);

  @override
  String toString() => 'AttemptResult[score=$score, totalQuestions=$totalQuestions, correctAnswers=$correctAnswers, timeUsedSeconds=$timeUsedSeconds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.score != null) {
      json[r'score'] = this.score;
    } else {
      json[r'score'] = null;
    }
    if (this.totalQuestions != null) {
      json[r'totalQuestions'] = this.totalQuestions;
    } else {
      json[r'totalQuestions'] = null;
    }
    if (this.correctAnswers != null) {
      json[r'correctAnswers'] = this.correctAnswers;
    } else {
      json[r'correctAnswers'] = null;
    }
    if (this.timeUsedSeconds != null) {
      json[r'timeUsedSeconds'] = this.timeUsedSeconds;
    } else {
      json[r'timeUsedSeconds'] = null;
    }
    return json;
  }

  /// Returns a new [AttemptResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AttemptResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AttemptResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AttemptResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AttemptResult(
        score: Score.fromJson(json[r'score']),
        totalQuestions: mapValueOfType<int>(json, r'totalQuestions'),
        correctAnswers: mapValueOfType<int>(json, r'correctAnswers'),
        timeUsedSeconds: mapValueOfType<int>(json, r'timeUsedSeconds'),
      );
    }
    return null;
  }

  static List<AttemptResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AttemptResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AttemptResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AttemptResult> mapFromJson(dynamic json) {
    final map = <String, AttemptResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AttemptResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AttemptResult-objects as value to a dart map
  static Map<String, List<AttemptResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AttemptResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AttemptResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

