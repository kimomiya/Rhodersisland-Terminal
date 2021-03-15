// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'bounds_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BoundsDto _$BoundsDtoFromJson(Map<String, dynamic> json) {
  return _BoundsDto.fromJson(json);
}

/// @nodoc
class _$BoundsDtoTearOff {
  const _$BoundsDtoTearOff();

  _BoundsDto call(int? lower, int? upper) {
    return _BoundsDto(
      lower,
      upper,
    );
  }

  BoundsDto fromJson(Map<String, Object> json) {
    return BoundsDto.fromJson(json);
  }
}

/// @nodoc
const $BoundsDto = _$BoundsDtoTearOff();

/// @nodoc
mixin _$BoundsDto {
  int? get lower => throw _privateConstructorUsedError;
  int? get upper => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoundsDtoCopyWith<BoundsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoundsDtoCopyWith<$Res> {
  factory $BoundsDtoCopyWith(BoundsDto value, $Res Function(BoundsDto) then) =
      _$BoundsDtoCopyWithImpl<$Res>;
  $Res call({int? lower, int? upper});
}

/// @nodoc
class _$BoundsDtoCopyWithImpl<$Res> implements $BoundsDtoCopyWith<$Res> {
  _$BoundsDtoCopyWithImpl(this._value, this._then);

  final BoundsDto _value;
  // ignore: unused_field
  final $Res Function(BoundsDto) _then;

  @override
  $Res call({
    Object? lower = freezed,
    Object? upper = freezed,
  }) {
    return _then(_value.copyWith(
      lower: lower == freezed
          ? _value.lower
          : lower // ignore: cast_nullable_to_non_nullable
              as int?,
      upper: upper == freezed
          ? _value.upper
          : upper // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$BoundsDtoCopyWith<$Res> implements $BoundsDtoCopyWith<$Res> {
  factory _$BoundsDtoCopyWith(
          _BoundsDto value, $Res Function(_BoundsDto) then) =
      __$BoundsDtoCopyWithImpl<$Res>;
  @override
  $Res call({int? lower, int? upper});
}

/// @nodoc
class __$BoundsDtoCopyWithImpl<$Res> extends _$BoundsDtoCopyWithImpl<$Res>
    implements _$BoundsDtoCopyWith<$Res> {
  __$BoundsDtoCopyWithImpl(_BoundsDto _value, $Res Function(_BoundsDto) _then)
      : super(_value, (v) => _then(v as _BoundsDto));

  @override
  _BoundsDto get _value => super._value as _BoundsDto;

  @override
  $Res call({
    Object? lower = freezed,
    Object? upper = freezed,
  }) {
    return _then(_BoundsDto(
      lower == freezed
          ? _value.lower
          : lower // ignore: cast_nullable_to_non_nullable
              as int?,
      upper == freezed
          ? _value.upper
          : upper // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_BoundsDto implements _BoundsDto {
  const _$_BoundsDto(this.lower, this.upper);

  factory _$_BoundsDto.fromJson(Map<String, dynamic> json) =>
      _$_$_BoundsDtoFromJson(json);

  @override
  final int? lower;
  @override
  final int? upper;

  @override
  String toString() {
    return 'BoundsDto(lower: $lower, upper: $upper)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BoundsDto &&
            (identical(other.lower, lower) ||
                const DeepCollectionEquality().equals(other.lower, lower)) &&
            (identical(other.upper, upper) ||
                const DeepCollectionEquality().equals(other.upper, upper)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(lower) ^
      const DeepCollectionEquality().hash(upper);

  @JsonKey(ignore: true)
  @override
  _$BoundsDtoCopyWith<_BoundsDto> get copyWith =>
      __$BoundsDtoCopyWithImpl<_BoundsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BoundsDtoToJson(this);
  }
}

abstract class _BoundsDto implements BoundsDto {
  const factory _BoundsDto(int? lower, int? upper) = _$_BoundsDto;

  factory _BoundsDto.fromJson(Map<String, dynamic> json) =
      _$_BoundsDto.fromJson;

  @override
  int? get lower => throw _privateConstructorUsedError;
  @override
  int? get upper => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BoundsDtoCopyWith<_BoundsDto> get copyWith =>
      throw _privateConstructorUsedError;
}
