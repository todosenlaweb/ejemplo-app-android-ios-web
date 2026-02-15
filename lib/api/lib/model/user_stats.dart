//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserStats {
  /// Returns a new [UserStats] instance.
  UserStats({
    this.userId,
    this.quizzesCompleted,
    this.averageScore,
    this.bestScore,
    this.totalQuestionsAnswered,
    this.totalCorrectAnswers,
    this.accuracy,
  });

  /// Identificador del usuario
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  /// Número total de quizzes completados
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? quizzesCompleted;

  /// Promedio de score en porcentaje (0-100)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? averageScore;

  /// Mejor score obtenido en porcentaje (0-100)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? bestScore;

  /// Total de preguntas respondidas en todos los quizzes
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalQuestionsAnswered;

  /// Total de respuestas correctas en todos los quizzes
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalCorrectAnswers;

  /// Porcentaje global de aciertos (0-100)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? accuracy;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserStats &&
    other.userId == userId &&
    other.quizzesCompleted == quizzesCompleted &&
    other.averageScore == averageScore &&
    other.bestScore == bestScore &&
    other.totalQuestionsAnswered == totalQuestionsAnswered &&
    other.totalCorrectAnswers == totalCorrectAnswers &&
    other.accuracy == accuracy;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (userId == null ? 0 : userId!.hashCode) +
    (quizzesCompleted == null ? 0 : quizzesCompleted!.hashCode) +
    (averageScore == null ? 0 : averageScore!.hashCode) +
    (bestScore == null ? 0 : bestScore!.hashCode) +
    (totalQuestionsAnswered == null ? 0 : totalQuestionsAnswered!.hashCode) +
    (totalCorrectAnswers == null ? 0 : totalCorrectAnswers!.hashCode) +
    (accuracy == null ? 0 : accuracy!.hashCode);

  @override
  String toString() => 'UserStats[userId=$userId, quizzesCompleted=$quizzesCompleted, averageScore=$averageScore, bestScore=$bestScore, totalQuestionsAnswered=$totalQuestionsAnswered, totalCorrectAnswers=$totalCorrectAnswers, accuracy=$accuracy]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.userId != null) {
      json[r'userId'] = this.userId;
    } else {
      json[r'userId'] = null;
    }
    if (this.quizzesCompleted != null) {
      json[r'quizzesCompleted'] = this.quizzesCompleted;
    } else {
      json[r'quizzesCompleted'] = null;
    }
    if (this.averageScore != null) {
      json[r'averageScore'] = this.averageScore;
    } else {
      json[r'averageScore'] = null;
    }
    if (this.bestScore != null) {
      json[r'bestScore'] = this.bestScore;
    } else {
      json[r'bestScore'] = null;
    }
    if (this.totalQuestionsAnswered != null) {
      json[r'totalQuestionsAnswered'] = this.totalQuestionsAnswered;
    } else {
      json[r'totalQuestionsAnswered'] = null;
    }
    if (this.totalCorrectAnswers != null) {
      json[r'totalCorrectAnswers'] = this.totalCorrectAnswers;
    } else {
      json[r'totalCorrectAnswers'] = null;
    }
    if (this.accuracy != null) {
      json[r'accuracy'] = this.accuracy;
    } else {
      json[r'accuracy'] = null;
    }
    return json;
  }

  /// Returns a new [UserStats] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserStats? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserStats[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserStats[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserStats(
        userId: mapValueOfType<String>(json, r'userId'),
        quizzesCompleted: mapValueOfType<int>(json, r'quizzesCompleted'),
        averageScore: mapValueOfType<double>(json, r'averageScore'),
        bestScore: mapValueOfType<double>(json, r'bestScore'),
        totalQuestionsAnswered: mapValueOfType<int>(json, r'totalQuestionsAnswered'),
        totalCorrectAnswers: mapValueOfType<int>(json, r'totalCorrectAnswers'),
        accuracy: mapValueOfType<double>(json, r'accuracy'),
      );
    }
    return null;
  }

  static List<UserStats> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserStats>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserStats.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserStats> mapFromJson(dynamic json) {
    final map = <String, UserStats>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserStats.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserStats-objects as value to a dart map
  static Map<String, List<UserStats>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserStats>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserStats.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

