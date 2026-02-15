//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class QuizStats {
  /// Returns a new [QuizStats] instance.
  QuizStats({
    this.quizId,
    this.totalAttempts,
    this.averageScore,
    this.completionRate,
    this.averageTimeSeconds,
  });

  /// Identificador del quiz
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? quizId;

  /// Número total de intentos realizados en este quiz
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalAttempts;

  /// Score promedio en porcentaje (0-100)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? averageScore;

  /// Porcentaje de intentos completados (0-100)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? completionRate;

  /// Tiempo promedio invertido por intento en segundos
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? averageTimeSeconds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is QuizStats &&
    other.quizId == quizId &&
    other.totalAttempts == totalAttempts &&
    other.averageScore == averageScore &&
    other.completionRate == completionRate &&
    other.averageTimeSeconds == averageTimeSeconds;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (quizId == null ? 0 : quizId!.hashCode) +
    (totalAttempts == null ? 0 : totalAttempts!.hashCode) +
    (averageScore == null ? 0 : averageScore!.hashCode) +
    (completionRate == null ? 0 : completionRate!.hashCode) +
    (averageTimeSeconds == null ? 0 : averageTimeSeconds!.hashCode);

  @override
  String toString() => 'QuizStats[quizId=$quizId, totalAttempts=$totalAttempts, averageScore=$averageScore, completionRate=$completionRate, averageTimeSeconds=$averageTimeSeconds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.quizId != null) {
      json[r'quizId'] = this.quizId;
    } else {
      json[r'quizId'] = null;
    }
    if (this.totalAttempts != null) {
      json[r'totalAttempts'] = this.totalAttempts;
    } else {
      json[r'totalAttempts'] = null;
    }
    if (this.averageScore != null) {
      json[r'averageScore'] = this.averageScore;
    } else {
      json[r'averageScore'] = null;
    }
    if (this.completionRate != null) {
      json[r'completionRate'] = this.completionRate;
    } else {
      json[r'completionRate'] = null;
    }
    if (this.averageTimeSeconds != null) {
      json[r'averageTimeSeconds'] = this.averageTimeSeconds;
    } else {
      json[r'averageTimeSeconds'] = null;
    }
    return json;
  }

  /// Returns a new [QuizStats] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static QuizStats? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "QuizStats[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "QuizStats[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return QuizStats(
        quizId: mapValueOfType<String>(json, r'quizId'),
        totalAttempts: mapValueOfType<int>(json, r'totalAttempts'),
        averageScore: mapValueOfType<double>(json, r'averageScore'),
        completionRate: mapValueOfType<double>(json, r'completionRate'),
        averageTimeSeconds: mapValueOfType<int>(json, r'averageTimeSeconds'),
      );
    }
    return null;
  }

  static List<QuizStats> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <QuizStats>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = QuizStats.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, QuizStats> mapFromJson(dynamic json) {
    final map = <String, QuizStats>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = QuizStats.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of QuizStats-objects as value to a dart map
  static Map<String, List<QuizStats>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<QuizStats>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = QuizStats.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

