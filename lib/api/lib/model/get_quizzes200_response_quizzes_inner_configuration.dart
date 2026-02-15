//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetQuizzes200ResponseQuizzesInnerConfiguration {
  /// Returns a new [GetQuizzes200ResponseQuizzesInnerConfiguration] instance.
  GetQuizzes200ResponseQuizzesInnerConfiguration({
    this.gradeMode,
    this.globalTimeSeconds,
    this.timePerQuestionSeconds,
    this.tipEveryX,
  });

  GetQuizzes200ResponseQuizzesInnerConfigurationGradeModeEnum? gradeMode;

  int? globalTimeSeconds;

  int? timePerQuestionSeconds;

  int? tipEveryX;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetQuizzes200ResponseQuizzesInnerConfiguration &&
    other.gradeMode == gradeMode &&
    other.globalTimeSeconds == globalTimeSeconds &&
    other.timePerQuestionSeconds == timePerQuestionSeconds &&
    other.tipEveryX == tipEveryX;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (gradeMode == null ? 0 : gradeMode!.hashCode) +
    (globalTimeSeconds == null ? 0 : globalTimeSeconds!.hashCode) +
    (timePerQuestionSeconds == null ? 0 : timePerQuestionSeconds!.hashCode) +
    (tipEveryX == null ? 0 : tipEveryX!.hashCode);

  @override
  String toString() => 'GetQuizzes200ResponseQuizzesInnerConfiguration[gradeMode=$gradeMode, globalTimeSeconds=$globalTimeSeconds, timePerQuestionSeconds=$timePerQuestionSeconds, tipEveryX=$tipEveryX]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.gradeMode != null) {
      json[r'gradeMode'] = this.gradeMode;
    } else {
      json[r'gradeMode'] = null;
    }
    if (this.globalTimeSeconds != null) {
      json[r'globalTimeSeconds'] = this.globalTimeSeconds;
    } else {
      json[r'globalTimeSeconds'] = null;
    }
    if (this.timePerQuestionSeconds != null) {
      json[r'timePerQuestionSeconds'] = this.timePerQuestionSeconds;
    } else {
      json[r'timePerQuestionSeconds'] = null;
    }
    if (this.tipEveryX != null) {
      json[r'tipEveryX'] = this.tipEveryX;
    } else {
      json[r'tipEveryX'] = null;
    }
    return json;
  }

  /// Returns a new [GetQuizzes200ResponseQuizzesInnerConfiguration] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetQuizzes200ResponseQuizzesInnerConfiguration? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetQuizzes200ResponseQuizzesInnerConfiguration[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetQuizzes200ResponseQuizzesInnerConfiguration[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetQuizzes200ResponseQuizzesInnerConfiguration(
        gradeMode: GetQuizzes200ResponseQuizzesInnerConfigurationGradeModeEnum.fromJson(json[r'gradeMode']),
        globalTimeSeconds: mapValueOfType<int>(json, r'globalTimeSeconds'),
        timePerQuestionSeconds: mapValueOfType<int>(json, r'timePerQuestionSeconds'),
        tipEveryX: mapValueOfType<int>(json, r'tipEveryX'),
      );
    }
    return null;
  }

  static List<GetQuizzes200ResponseQuizzesInnerConfiguration> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetQuizzes200ResponseQuizzesInnerConfiguration>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetQuizzes200ResponseQuizzesInnerConfiguration.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetQuizzes200ResponseQuizzesInnerConfiguration> mapFromJson(dynamic json) {
    final map = <String, GetQuizzes200ResponseQuizzesInnerConfiguration>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetQuizzes200ResponseQuizzesInnerConfiguration.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetQuizzes200ResponseQuizzesInnerConfiguration-objects as value to a dart map
  static Map<String, List<GetQuizzes200ResponseQuizzesInnerConfiguration>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetQuizzes200ResponseQuizzesInnerConfiguration>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetQuizzes200ResponseQuizzesInnerConfiguration.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class GetQuizzes200ResponseQuizzesInnerConfigurationGradeModeEnum {
  /// Instantiate a new enum with the provided [value].
  const GetQuizzes200ResponseQuizzesInnerConfigurationGradeModeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const instant = GetQuizzes200ResponseQuizzesInnerConfigurationGradeModeEnum._(r'instant');
  static const final_ = GetQuizzes200ResponseQuizzesInnerConfigurationGradeModeEnum._(r'final');

  /// List of all possible values in this [enum][GetQuizzes200ResponseQuizzesInnerConfigurationGradeModeEnum].
  static const values = <GetQuizzes200ResponseQuizzesInnerConfigurationGradeModeEnum>[
    instant,
    final_,
  ];

  static GetQuizzes200ResponseQuizzesInnerConfigurationGradeModeEnum? fromJson(dynamic value) => GetQuizzes200ResponseQuizzesInnerConfigurationGradeModeEnumTypeTransformer().decode(value);

  static List<GetQuizzes200ResponseQuizzesInnerConfigurationGradeModeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetQuizzes200ResponseQuizzesInnerConfigurationGradeModeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetQuizzes200ResponseQuizzesInnerConfigurationGradeModeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GetQuizzes200ResponseQuizzesInnerConfigurationGradeModeEnum] to String,
/// and [decode] dynamic data back to [GetQuizzes200ResponseQuizzesInnerConfigurationGradeModeEnum].
class GetQuizzes200ResponseQuizzesInnerConfigurationGradeModeEnumTypeTransformer {
  factory GetQuizzes200ResponseQuizzesInnerConfigurationGradeModeEnumTypeTransformer() => _instance ??= const GetQuizzes200ResponseQuizzesInnerConfigurationGradeModeEnumTypeTransformer._();

  const GetQuizzes200ResponseQuizzesInnerConfigurationGradeModeEnumTypeTransformer._();

  String encode(GetQuizzes200ResponseQuizzesInnerConfigurationGradeModeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GetQuizzes200ResponseQuizzesInnerConfigurationGradeModeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GetQuizzes200ResponseQuizzesInnerConfigurationGradeModeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'instant': return GetQuizzes200ResponseQuizzesInnerConfigurationGradeModeEnum.instant;
        case r'final': return GetQuizzes200ResponseQuizzesInnerConfigurationGradeModeEnum.final_;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GetQuizzes200ResponseQuizzesInnerConfigurationGradeModeEnumTypeTransformer] instance.
  static GetQuizzes200ResponseQuizzesInnerConfigurationGradeModeEnumTypeTransformer? _instance;
}


