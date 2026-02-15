//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AddQuestionRequest {
  /// Returns a new [AddQuestionRequest] instance.
  AddQuestionRequest({
    required this.quizId,
    required this.text,
    required this.type,
    this.options = const [],
  });

  String quizId;

  /// Texto de la pregunta
  String text;

  AddQuestionRequestTypeEnum type;

  List<AddQuestionRequestOptionsInner> options;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AddQuestionRequest &&
    other.quizId == quizId &&
    other.text == text &&
    other.type == type &&
    _deepEquality.equals(other.options, options);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (quizId.hashCode) +
    (text.hashCode) +
    (type.hashCode) +
    (options.hashCode);

  @override
  String toString() => 'AddQuestionRequest[quizId=$quizId, text=$text, type=$type, options=$options]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'quizId'] = this.quizId;
      json[r'text'] = this.text;
      json[r'type'] = this.type;
      json[r'options'] = this.options;
    return json;
  }

  /// Returns a new [AddQuestionRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AddQuestionRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AddQuestionRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AddQuestionRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AddQuestionRequest(
        quizId: mapValueOfType<String>(json, r'quizId')!,
        text: mapValueOfType<String>(json, r'text')!,
        type: AddQuestionRequestTypeEnum.fromJson(json[r'type'])!,
        options: AddQuestionRequestOptionsInner.listFromJson(json[r'options']),
      );
    }
    return null;
  }

  static List<AddQuestionRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AddQuestionRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AddQuestionRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AddQuestionRequest> mapFromJson(dynamic json) {
    final map = <String, AddQuestionRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AddQuestionRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AddQuestionRequest-objects as value to a dart map
  static Map<String, List<AddQuestionRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AddQuestionRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AddQuestionRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'quizId',
    'text',
    'type',
    'options',
  };
}


class AddQuestionRequestTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const AddQuestionRequestTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const singleChoice = AddQuestionRequestTypeEnum._(r'single_choice');

  /// List of all possible values in this [enum][AddQuestionRequestTypeEnum].
  static const values = <AddQuestionRequestTypeEnum>[
    singleChoice,
  ];

  static AddQuestionRequestTypeEnum? fromJson(dynamic value) => AddQuestionRequestTypeEnumTypeTransformer().decode(value);

  static List<AddQuestionRequestTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AddQuestionRequestTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AddQuestionRequestTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AddQuestionRequestTypeEnum] to String,
/// and [decode] dynamic data back to [AddQuestionRequestTypeEnum].
class AddQuestionRequestTypeEnumTypeTransformer {
  factory AddQuestionRequestTypeEnumTypeTransformer() => _instance ??= const AddQuestionRequestTypeEnumTypeTransformer._();

  const AddQuestionRequestTypeEnumTypeTransformer._();

  String encode(AddQuestionRequestTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AddQuestionRequestTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AddQuestionRequestTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'single_choice': return AddQuestionRequestTypeEnum.singleChoice;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AddQuestionRequestTypeEnumTypeTransformer] instance.
  static AddQuestionRequestTypeEnumTypeTransformer? _instance;
}


