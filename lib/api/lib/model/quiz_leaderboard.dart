//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class QuizLeaderboard {
  /// Returns a new [QuizLeaderboard] instance.
  QuizLeaderboard({
    this.quizId,
    this.entries = const [],
    this.totalEntries,
  });

  /// Identificador del quiz
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? quizId;

  /// Top 50 mejores intentos del quiz
  List<LeaderboardEntry> entries;

  /// Total de entradas en el leaderboard
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalEntries;

  @override
  bool operator ==(Object other) => identical(this, other) || other is QuizLeaderboard &&
    other.quizId == quizId &&
    _deepEquality.equals(other.entries, entries) &&
    other.totalEntries == totalEntries;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (quizId == null ? 0 : quizId!.hashCode) +
    (entries.hashCode) +
    (totalEntries == null ? 0 : totalEntries!.hashCode);

  @override
  String toString() => 'QuizLeaderboard[quizId=$quizId, entries=$entries, totalEntries=$totalEntries]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.quizId != null) {
      json[r'quizId'] = this.quizId;
    } else {
      json[r'quizId'] = null;
    }
      json[r'entries'] = this.entries;
    if (this.totalEntries != null) {
      json[r'totalEntries'] = this.totalEntries;
    } else {
      json[r'totalEntries'] = null;
    }
    return json;
  }

  /// Returns a new [QuizLeaderboard] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static QuizLeaderboard? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "QuizLeaderboard[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "QuizLeaderboard[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return QuizLeaderboard(
        quizId: mapValueOfType<String>(json, r'quizId'),
        entries: LeaderboardEntry.listFromJson(json[r'entries']),
        totalEntries: mapValueOfType<int>(json, r'totalEntries'),
      );
    }
    return null;
  }

  static List<QuizLeaderboard> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <QuizLeaderboard>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = QuizLeaderboard.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, QuizLeaderboard> mapFromJson(dynamic json) {
    final map = <String, QuizLeaderboard>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = QuizLeaderboard.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of QuizLeaderboard-objects as value to a dart map
  static Map<String, List<QuizLeaderboard>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<QuizLeaderboard>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = QuizLeaderboard.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

