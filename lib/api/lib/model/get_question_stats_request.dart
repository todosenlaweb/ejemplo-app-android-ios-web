//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetQuestionStatsRequest {
  /// Returns a new [GetQuestionStatsRequest] instance.
  GetQuestionStatsRequest({
    required this.questionId,
  });

  /// Identificador de la pregunta
  String questionId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetQuestionStatsRequest &&
    other.questionId == questionId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (questionId.hashCode);

  @override
  String toString() => 'GetQuestionStatsRequest[questionId=$questionId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'questionId'] = this.questionId;
    return json;
  }

  /// Returns a new [GetQuestionStatsRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetQuestionStatsRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetQuestionStatsRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetQuestionStatsRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetQuestionStatsRequest(
        questionId: mapValueOfType<String>(json, r'questionId')!,
      );
    }
    return null;
  }

  static List<GetQuestionStatsRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetQuestionStatsRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetQuestionStatsRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetQuestionStatsRequest> mapFromJson(dynamic json) {
    final map = <String, GetQuestionStatsRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetQuestionStatsRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetQuestionStatsRequest-objects as value to a dart map
  static Map<String, List<GetQuestionStatsRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetQuestionStatsRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetQuestionStatsRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'questionId',
  };
}

