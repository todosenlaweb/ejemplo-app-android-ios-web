//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetQuizLeaderboardRequest {
  /// Returns a new [GetQuizLeaderboardRequest] instance.
  GetQuizLeaderboardRequest({
    required this.quizId,
    this.limit,
  });

  /// Identificador del quiz
  String quizId;

  /// Número máximo de entradas (1-100, default 50)
  ///
  /// Minimum value: 1
  /// Maximum value: 100
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? limit;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetQuizLeaderboardRequest &&
    other.quizId == quizId &&
    other.limit == limit;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (quizId.hashCode) +
    (limit == null ? 0 : limit!.hashCode);

  @override
  String toString() => 'GetQuizLeaderboardRequest[quizId=$quizId, limit=$limit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'quizId'] = this.quizId;
    if (this.limit != null) {
      json[r'limit'] = this.limit;
    } else {
      json[r'limit'] = null;
    }
    return json;
  }

  /// Returns a new [GetQuizLeaderboardRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetQuizLeaderboardRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetQuizLeaderboardRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetQuizLeaderboardRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetQuizLeaderboardRequest(
        quizId: mapValueOfType<String>(json, r'quizId')!,
        limit: mapValueOfType<int>(json, r'limit'),
      );
    }
    return null;
  }

  static List<GetQuizLeaderboardRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetQuizLeaderboardRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetQuizLeaderboardRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetQuizLeaderboardRequest> mapFromJson(dynamic json) {
    final map = <String, GetQuizLeaderboardRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetQuizLeaderboardRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetQuizLeaderboardRequest-objects as value to a dart map
  static Map<String, List<GetQuizLeaderboardRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetQuizLeaderboardRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetQuizLeaderboardRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'quizId',
  };
}

