//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateQuiz200Response {
  /// Returns a new [CreateQuiz200Response] instance.
  CreateQuiz200Response({
    this.id,
    this.status,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  CreateQuiz200ResponseStatusEnum? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateQuiz200Response &&
    other.id == id &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'CreateQuiz200Response[id=$id, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [CreateQuiz200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateQuiz200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateQuiz200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateQuiz200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateQuiz200Response(
        id: mapValueOfType<String>(json, r'id'),
        status: CreateQuiz200ResponseStatusEnum.fromJson(json[r'status']),
      );
    }
    return null;
  }

  static List<CreateQuiz200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateQuiz200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateQuiz200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateQuiz200Response> mapFromJson(dynamic json) {
    final map = <String, CreateQuiz200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateQuiz200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateQuiz200Response-objects as value to a dart map
  static Map<String, List<CreateQuiz200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateQuiz200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateQuiz200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class CreateQuiz200ResponseStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateQuiz200ResponseStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const draft = CreateQuiz200ResponseStatusEnum._(r'draft');

  /// List of all possible values in this [enum][CreateQuiz200ResponseStatusEnum].
  static const values = <CreateQuiz200ResponseStatusEnum>[
    draft,
  ];

  static CreateQuiz200ResponseStatusEnum? fromJson(dynamic value) => CreateQuiz200ResponseStatusEnumTypeTransformer().decode(value);

  static List<CreateQuiz200ResponseStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateQuiz200ResponseStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateQuiz200ResponseStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateQuiz200ResponseStatusEnum] to String,
/// and [decode] dynamic data back to [CreateQuiz200ResponseStatusEnum].
class CreateQuiz200ResponseStatusEnumTypeTransformer {
  factory CreateQuiz200ResponseStatusEnumTypeTransformer() => _instance ??= const CreateQuiz200ResponseStatusEnumTypeTransformer._();

  const CreateQuiz200ResponseStatusEnumTypeTransformer._();

  String encode(CreateQuiz200ResponseStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateQuiz200ResponseStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateQuiz200ResponseStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'draft': return CreateQuiz200ResponseStatusEnum.draft;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateQuiz200ResponseStatusEnumTypeTransformer] instance.
  static CreateQuiz200ResponseStatusEnumTypeTransformer? _instance;
}


