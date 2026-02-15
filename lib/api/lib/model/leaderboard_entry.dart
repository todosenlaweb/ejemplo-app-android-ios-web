//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LeaderboardEntry {
  /// Returns a new [LeaderboardEntry] instance.
  LeaderboardEntry({
    this.rank,
    this.userId,
    this.score,
    this.timeSpentSeconds,
    this.attemptId,
    this.createdAt,
  });

  /// Posición en el ranking (1-50)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? rank;

  /// ID del usuario
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  /// Score en porcentaje (0-100)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? score;

  /// Tiempo invertido en el intento en segundos
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? timeSpentSeconds;

  /// ID del intento de quiz
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? attemptId;

  /// Fecha y hora del intento
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LeaderboardEntry &&
    other.rank == rank &&
    other.userId == userId &&
    other.score == score &&
    other.timeSpentSeconds == timeSpentSeconds &&
    other.attemptId == attemptId &&
    other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (rank == null ? 0 : rank!.hashCode) +
    (userId == null ? 0 : userId!.hashCode) +
    (score == null ? 0 : score!.hashCode) +
    (timeSpentSeconds == null ? 0 : timeSpentSeconds!.hashCode) +
    (attemptId == null ? 0 : attemptId!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode);

  @override
  String toString() => 'LeaderboardEntry[rank=$rank, userId=$userId, score=$score, timeSpentSeconds=$timeSpentSeconds, attemptId=$attemptId, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.rank != null) {
      json[r'rank'] = this.rank;
    } else {
      json[r'rank'] = null;
    }
    if (this.userId != null) {
      json[r'userId'] = this.userId;
    } else {
      json[r'userId'] = null;
    }
    if (this.score != null) {
      json[r'score'] = this.score;
    } else {
      json[r'score'] = null;
    }
    if (this.timeSpentSeconds != null) {
      json[r'timeSpentSeconds'] = this.timeSpentSeconds;
    } else {
      json[r'timeSpentSeconds'] = null;
    }
    if (this.attemptId != null) {
      json[r'attemptId'] = this.attemptId;
    } else {
      json[r'attemptId'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'createdAt'] = null;
    }
    return json;
  }

  /// Returns a new [LeaderboardEntry] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LeaderboardEntry? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LeaderboardEntry[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LeaderboardEntry[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LeaderboardEntry(
        rank: mapValueOfType<int>(json, r'rank'),
        userId: mapValueOfType<String>(json, r'userId'),
        score: mapValueOfType<double>(json, r'score'),
        timeSpentSeconds: mapValueOfType<int>(json, r'timeSpentSeconds'),
        attemptId: mapValueOfType<String>(json, r'attemptId'),
        createdAt: mapDateTime(json, r'createdAt', r''),
      );
    }
    return null;
  }

  static List<LeaderboardEntry> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LeaderboardEntry>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LeaderboardEntry.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LeaderboardEntry> mapFromJson(dynamic json) {
    final map = <String, LeaderboardEntry>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LeaderboardEntry.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LeaderboardEntry-objects as value to a dart map
  static Map<String, List<LeaderboardEntry>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LeaderboardEntry>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LeaderboardEntry.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

