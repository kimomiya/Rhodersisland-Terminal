// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'existence_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExistenceDto _$ExistenceDtoFromJson(Map<String, dynamic> json) {
  return _ExistenceDto.fromJson(json);
}

/// @nodoc
class _$ExistenceDtoTearOff {
  const _$ExistenceDtoTearOff();

  _ExistenceDto call(int? closeTime, bool? exist, int? openTime) {
    return _ExistenceDto(
      closeTime,
      exist,
      openTime,
    );
  }

  ExistenceDto fromJson(Map<String, Object> json) {
    return ExistenceDto.fromJson(json);
  }
}

/// @nodoc
const $ExistenceDto = _$ExistenceDtoTearOff();

/// @nodoc
mixin _$ExistenceDto {
  int? get closeTime => throw _privateConstructorUsedError;
  bool? get exist => throw _privateConstructorUsedError;
  int? get openTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExistenceDtoCopyWith<ExistenceDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExistenceDtoCopyWith<$Res> {
  factory $ExistenceDtoCopyWith(
          ExistenceDto value, $Res Function(ExistenceDto) then) =
      _$ExistenceDtoCopyWithImpl<$Res>;
  $Res call({int? closeTime, bool? exist, int? openTime});
}

/// @nodoc
class _$ExistenceDtoCopyWithImpl<$Res> implements $ExistenceDtoCopyWith<$Res> {
  _$ExistenceDtoCopyWithImpl(this._value, this._then);

  final ExistenceDto _value;
  // ignore: unused_field
  final $Res Function(ExistenceDto) _then;

  @override
  $Res call({
    Object? closeTime = freezed,
    Object? exist = freezed,
    Object? openTime = freezed,
  }) {
    return _then(_value.copyWith(
      closeTime: closeTime == freezed
          ? _value.closeTime
          : closeTime // ignore: cast_nullable_to_non_nullable
              as int?,
      exist: exist == freezed
          ? _value.exist
          : exist // ignore: cast_nullable_to_non_nullable
              as bool?,
      openTime: openTime == freezed
          ? _value.openTime
          : openTime // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$ExistenceDtoCopyWith<$Res>
    implements $ExistenceDtoCopyWith<$Res> {
  factory _$ExistenceDtoCopyWith(
          _ExistenceDto value, $Res Function(_ExistenceDto) then) =
      __$ExistenceDtoCopyWithImpl<$Res>;
  @override
  $Res call({int? closeTime, bool? exist, int? openTime});
}

/// @nodoc
class __$ExistenceDtoCopyWithImpl<$Res> extends _$ExistenceDtoCopyWithImpl<$Res>
    implements _$ExistenceDtoCopyWith<$Res> {
  __$ExistenceDtoCopyWithImpl(
      _ExistenceDto _value, $Res Function(_ExistenceDto) _then)
      : super(_value, (v) => _then(v as _ExistenceDto));

  @override
  _ExistenceDto get _value => super._value as _ExistenceDto;

  @override
  $Res call({
    Object? closeTime = freezed,
    Object? exist = freezed,
    Object? openTime = freezed,
  }) {
    return _then(_ExistenceDto(
      closeTime == freezed
          ? _value.closeTime
          : closeTime // ignore: cast_nullable_to_non_nullable
              as int?,
      exist == freezed
          ? _value.exist
          : exist // ignore: cast_nullable_to_non_nullable
              as bool?,
      openTime == freezed
          ? _value.openTime
          : openTime // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ExistenceDto implements _ExistenceDto {
  const _$_ExistenceDto(this.closeTime, this.exist, this.openTime);

  factory _$_ExistenceDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ExistenceDtoFromJson(json);

  @override
  final int? closeTime;
  @override
  final bool? exist;
  @override
  final int? openTime;

  @override
  String toString() {
    return 'ExistenceDto(closeTime: $closeTime, exist: $exist, openTime: $openTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExistenceDto &&
            (identical(other.closeTime, closeTime) ||
                const DeepCollectionEquality()
                    .equals(other.closeTime, closeTime)) &&
            (identical(other.exist, exist) ||
                const DeepCollectionEquality().equals(other.exist, exist)) &&
            (identical(other.openTime, openTime) ||
                const DeepCollectionEquality()
                    .equals(other.openTime, openTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(closeTime) ^
      const DeepCollectionEquality().hash(exist) ^
      const DeepCollectionEquality().hash(openTime);

  @JsonKey(ignore: true)
  @override
  _$ExistenceDtoCopyWith<_ExistenceDto> get copyWith =>
      __$ExistenceDtoCopyWithImpl<_ExistenceDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ExistenceDtoToJson(this);
  }
}

abstract class _ExistenceDto implements ExistenceDto {
  const factory _ExistenceDto(int? closeTime, bool? exist, int? openTime) =
      _$_ExistenceDto;

  factory _ExistenceDto.fromJson(Map<String, dynamic> json) =
      _$_ExistenceDto.fromJson;

  @override
  int? get closeTime => throw _privateConstructorUsedError;
  @override
  bool? get exist => throw _privateConstructorUsedError;
  @override
  int? get openTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ExistenceDtoCopyWith<_ExistenceDto> get copyWith =>
      throw _privateConstructorUsedError;
}
