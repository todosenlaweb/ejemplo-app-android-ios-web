//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Estado del intento: - **in_progress**: El intento está en curso - **finished**: El intento se completó exitosamente - **expired**: El intento expiró por exceso de tiempo (se marca automáticamente) 
class AttemptStatus {
  /// Instantiate a new enum with the provided [value].
  const AttemptStatus._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const inProgress = AttemptStatus._(r'in_progress');
  static const finished = AttemptStatus._(r'finished');
  static const expired = AttemptStatus._(r'expired');

  /// List of all possible values in this [enum][AttemptStatus].
  static const values = <AttemptStatus>[
    inProgress,
    finished,
    expired,
  ];

  static AttemptStatus? fromJson(dynamic value) => AttemptStatusTypeTransformer().decode(value);

  static List<AttemptStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AttemptStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AttemptStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AttemptStatus] to String,
/// and [decode] dynamic data back to [AttemptStatus].
class AttemptStatusTypeTransformer {
  factory AttemptStatusTypeTransformer() => _instance ??= const AttemptStatusTypeTransformer._();

  const AttemptStatusTypeTransformer._();

  String encode(AttemptStatus data) => data.value;

  /// Decodes a [dynamic value][data] to a AttemptStatus.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AttemptStatus? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'in_progress': return AttemptStatus.inProgress;
        case r'finished': return AttemptStatus.finished;
        case r'expired': return AttemptStatus.expired;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AttemptStatusTypeTransformer] instance.
  static AttemptStatusTypeTransformer? _instance;
}

