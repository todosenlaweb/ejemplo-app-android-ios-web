//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetQuizzes200ResponseQuizzesInner {
  /// Returns a new [GetQuizzes200ResponseQuizzesInner] instance.
  GetQuizzes200ResponseQuizzesInner({
    this.id,
    this.title,
    this.status,
    this.configuration,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  GetQuizzes200ResponseQuizzesInnerStatusEnum? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GetQuizzes200ResponseQuizzesInnerConfiguration? configuration;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetQuizzes200ResponseQuizzesInner &&
    other.id == id &&
    other.title == title &&
    other.status == status &&
    other.configuration == configuration;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (configuration == null ? 0 : configuration!.hashCode);

  @override
  String toString() => 'GetQuizzes200ResponseQuizzesInner[id=$id, title=$title, status=$status, configuration=$configuration]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.configuration != null) {
      json[r'configuration'] = this.configuration;
    } else {
      json[r'configuration'] = null;
    }
    return json;
  }

  /// Returns a new [GetQuizzes200ResponseQuizzesInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetQuizzes200ResponseQuizzesInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetQuizzes200ResponseQuizzesInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetQuizzes200ResponseQuizzesInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetQuizzes200ResponseQuizzesInner(
        id: mapValueOfType<String>(json, r'id'),
        title: mapValueOfType<String>(json, r'title'),
        status: GetQuizzes200ResponseQuizzesInnerStatusEnum.fromJson(json[r'status']),
        configuration: GetQuizzes200ResponseQuizzesInnerConfiguration.fromJson(json[r'configuration']),
      );
    }
    return null;
  }

  static List<GetQuizzes200ResponseQuizzesInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetQuizzes200ResponseQuizzesInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetQuizzes200ResponseQuizzesInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetQuizzes200ResponseQuizzesInner> mapFromJson(dynamic json) {
    final map = <String, GetQuizzes200ResponseQuizzesInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetQuizzes200ResponseQuizzesInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetQuizzes200ResponseQuizzesInner-objects as value to a dart map
  static Map<String, List<GetQuizzes200ResponseQuizzesInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetQuizzes200ResponseQuizzesInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetQuizzes200ResponseQuizzesInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class GetQuizzes200ResponseQuizzesInnerStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const GetQuizzes200ResponseQuizzesInnerStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const draft = GetQuizzes200ResponseQuizzesInnerStatusEnum._(r'draft');
  static const published = GetQuizzes200ResponseQuizzesInnerStatusEnum._(r'published');

  /// List of all possible values in this [enum][GetQuizzes200ResponseQuizzesInnerStatusEnum].
  static const values = <GetQuizzes200ResponseQuizzesInnerStatusEnum>[
    draft,
    published,
  ];

  static GetQuizzes200ResponseQuizzesInnerStatusEnum? fromJson(dynamic value) => GetQuizzes200ResponseQuizzesInnerStatusEnumTypeTransformer().decode(value);

  static List<GetQuizzes200ResponseQuizzesInnerStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetQuizzes200ResponseQuizzesInnerStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetQuizzes200ResponseQuizzesInnerStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GetQuizzes200ResponseQuizzesInnerStatusEnum] to String,
/// and [decode] dynamic data back to [GetQuizzes200ResponseQuizzesInnerStatusEnum].
class GetQuizzes200ResponseQuizzesInnerStatusEnumTypeTransformer {
  factory GetQuizzes200ResponseQuizzesInnerStatusEnumTypeTransformer() => _instance ??= const GetQuizzes200ResponseQuizzesInnerStatusEnumTypeTransformer._();

  const GetQuizzes200ResponseQuizzesInnerStatusEnumTypeTransformer._();

  String encode(GetQuizzes200ResponseQuizzesInnerStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GetQuizzes200ResponseQuizzesInnerStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GetQuizzes200ResponseQuizzesInnerStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'draft': return GetQuizzes200ResponseQuizzesInnerStatusEnum.draft;
        case r'published': return GetQuizzes200ResponseQuizzesInnerStatusEnum.published;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GetQuizzes200ResponseQuizzesInnerStatusEnumTypeTransformer] instance.
  static GetQuizzes200ResponseQuizzesInnerStatusEnumTypeTransformer? _instance;
}


