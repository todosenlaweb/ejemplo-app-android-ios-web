
//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateQuizRequestConfiguration {
  /// Returns a new [CreateQuizRequestConfiguration] instance.
  CreateQuizRequestConfiguration({
    this.gradeMode = CreateQuizRequestConfigurationGradeModeEnum.final_,
    this.globalTimeSeconds,
    this.timePerQuestionSeconds,
    this.tipEveryX,
  });

  /// Modo de calificación
  CreateQuizRequestConfigurationGradeModeEnum gradeMode;

  /// Tiempo total en segundos
  int? globalTimeSeconds;

  /// Tiempo por pregunta en segundos
  int? timePerQuestionSeconds;

  /// Mostrar tip cada X preguntas respondidas (HU-13)
  int? tipEveryX;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateQuizRequestConfiguration &&
    other.gradeMode == gradeMode &&
    other.globalTimeSeconds == globalTimeSeconds &&
    other.timePerQuestionSeconds == timePerQuestionSeconds &&
    other.tipEveryX == tipEveryX;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (gradeMode.hashCode) +
    (globalTimeSeconds == null ? 0 : globalTimeSeconds!.hashCode) +
    (timePerQuestionSeconds == null ? 0 : timePerQuestionSeconds!.hashCode) +
    (tipEveryX == null ? 0 : tipEveryX!.hashCode);

  @override
  String toString() => 'CreateQuizRequestConfiguration[gradeMode=$gradeMode, globalTimeSeconds=$globalTimeSeconds, timePerQuestionSeconds=$timePerQuestionSeconds, tipEveryX=$tipEveryX]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'gradeMode'] = this.gradeMode;
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

  /// Returns a new [CreateQuizRequestConfiguration] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateQuizRequestConfiguration? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateQuizRequestConfiguration[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateQuizRequestConfiguration[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateQuizRequestConfiguration(
        gradeMode: CreateQuizRequestConfigurationGradeModeEnum.fromJson(json[r'gradeMode']) ?? CreateQuizRequestConfigurationGradeModeEnum.final_,
        globalTimeSeconds: mapValueOfType<int>(json, r'globalTimeSeconds'),
        timePerQuestionSeconds: mapValueOfType<int>(json, r'timePerQuestionSeconds'),
        tipEveryX: mapValueOfType<int>(json, r'tipEveryX'),
      );
    }
    return null;
  }

  static List<CreateQuizRequestConfiguration> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateQuizRequestConfiguration>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateQuizRequestConfiguration.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateQuizRequestConfiguration> mapFromJson(dynamic json) {
    final map = <String, CreateQuizRequestConfiguration>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateQuizRequestConfiguration.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateQuizRequestConfiguration-objects as value to a dart map
  static Map<String, List<CreateQuizRequestConfiguration>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateQuizRequestConfiguration>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateQuizRequestConfiguration.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Modo de calificación
class CreateQuizRequestConfigurationGradeModeEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateQuizRequestConfigurationGradeModeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const instant = CreateQuizRequestConfigurationGradeModeEnum._(r'instant');
  static const final_ = CreateQuizRequestConfigurationGradeModeEnum._(r'final');

  /// List of all possible values in this [enum][CreateQuizRequestConfigurationGradeModeEnum].
  static const values = <CreateQuizRequestConfigurationGradeModeEnum>[
    instant,
    final_,
  ];

  static CreateQuizRequestConfigurationGradeModeEnum? fromJson(dynamic value) => CreateQuizRequestConfigurationGradeModeEnumTypeTransformer().decode(value);

  static List<CreateQuizRequestConfigurationGradeModeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateQuizRequestConfigurationGradeModeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateQuizRequestConfigurationGradeModeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateQuizRequestConfigurationGradeModeEnum] to String,
/// and [decode] dynamic data back to [CreateQuizRequestConfigurationGradeModeEnum].
class CreateQuizRequestConfigurationGradeModeEnumTypeTransformer {
  factory CreateQuizRequestConfigurationGradeModeEnumTypeTransformer() => _instance ??= const CreateQuizRequestConfigurationGradeModeEnumTypeTransformer._();

  const CreateQuizRequestConfigurationGradeModeEnumTypeTransformer._();

  String encode(CreateQuizRequestConfigurationGradeModeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateQuizRequestConfigurationGradeModeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateQuizRequestConfigurationGradeModeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'instant': return CreateQuizRequestConfigurationGradeModeEnum.instant;
        case r'final': return CreateQuizRequestConfigurationGradeModeEnum.final_;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateQuizRequestConfigurationGradeModeEnumTypeTransformer] instance.
  static CreateQuizRequestConfigurationGradeModeEnumTypeTransformer? _instance;
}
