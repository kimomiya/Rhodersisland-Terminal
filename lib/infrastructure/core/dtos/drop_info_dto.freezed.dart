// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'drop_info_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DropInfoDto _$DropInfoDtoFromJson(Map<String, dynamic> json) {
  return _DropInfoDto.fromJson(json);
}

/// @nodoc
class _$DropInfoDtoTearOff {
  const _$DropInfoDtoTearOff();

  _DropInfoDto call(String? itemId, String? dropType, BoundsDto? bounds) {
    return _DropInfoDto(
      itemId,
      dropType,
      bounds,
    );
  }

  DropInfoDto fromJson(Map<String, Object> json) {
    return DropInfoDto.fromJson(json);
  }
}

/// @nodoc
const $DropInfoDto = _$DropInfoDtoTearOff();

/// @nodoc
mixin _$DropInfoDto {
  String? get itemId => throw _privateConstructorUsedError;
  String? get dropType => throw _privateConstructorUsedError;
  BoundsDto? get bounds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DropInfoDtoCopyWith<DropInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DropInfoDtoCopyWith<$Res> {
  factory $DropInfoDtoCopyWith(
          DropInfoDto value, $Res Function(DropInfoDto) then) =
      _$DropInfoDtoCopyWithImpl<$Res>;
  $Res call({String? itemId, String? dropType, BoundsDto? bounds});

  $BoundsDtoCopyWith<$Res>? get bounds;
}

/// @nodoc
class _$DropInfoDtoCopyWithImpl<$Res> implements $DropInfoDtoCopyWith<$Res> {
  _$DropInfoDtoCopyWithImpl(this._value, this._then);

  final DropInfoDto _value;
  // ignore: unused_field
  final $Res Function(DropInfoDto) _then;

  @override
  $Res call({
    Object? itemId = freezed,
    Object? dropType = freezed,
    Object? bounds = freezed,
  }) {
    return _then(_value.copyWith(
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String?,
      dropType: dropType == freezed
          ? _value.dropType
          : dropType // ignore: cast_nullable_to_non_nullable
              as String?,
      bounds: bounds == freezed
          ? _value.bounds
          : bounds // ignore: cast_nullable_to_non_nullable
              as BoundsDto?,
    ));
  }

  @override
  $BoundsDtoCopyWith<$Res>? get bounds {
    if (_value.bounds == null) {
      return null;
    }

    return $BoundsDtoCopyWith<$Res>(_value.bounds!, (value) {
      return _then(_value.copyWith(bounds: value));
    });
  }
}

/// @nodoc
abstract class _$DropInfoDtoCopyWith<$Res>
    implements $DropInfoDtoCopyWith<$Res> {
  factory _$DropInfoDtoCopyWith(
          _DropInfoDto value, $Res Function(_DropInfoDto) then) =
      __$DropInfoDtoCopyWithImpl<$Res>;
  @override
  $Res call({String? itemId, String? dropType, BoundsDto? bounds});

  @override
  $BoundsDtoCopyWith<$Res>? get bounds;
}

/// @nodoc
class __$DropInfoDtoCopyWithImpl<$Res> extends _$DropInfoDtoCopyWithImpl<$Res>
    implements _$DropInfoDtoCopyWith<$Res> {
  __$DropInfoDtoCopyWithImpl(
      _DropInfoDto _value, $Res Function(_DropInfoDto) _then)
      : super(_value, (v) => _then(v as _DropInfoDto));

  @override
  _DropInfoDto get _value => super._value as _DropInfoDto;

  @override
  $Res call({
    Object? itemId = freezed,
    Object? dropType = freezed,
    Object? bounds = freezed,
  }) {
    return _then(_DropInfoDto(
      itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String?,
      dropType == freezed
          ? _value.dropType
          : dropType // ignore: cast_nullable_to_non_nullable
              as String?,
      bounds == freezed
          ? _value.bounds
          : bounds // ignore: cast_nullable_to_non_nullable
              as BoundsDto?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_DropInfoDto implements _DropInfoDto {
  const _$_DropInfoDto(this.itemId, this.dropType, this.bounds);

  factory _$_DropInfoDto.fromJson(Map<String, dynamic> json) =>
      _$_$_DropInfoDtoFromJson(json);

  @override
  final String? itemId;
  @override
  final String? dropType;
  @override
  final BoundsDto? bounds;

  @override
  String toString() {
    return 'DropInfoDto(itemId: $itemId, dropType: $dropType, bounds: $bounds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DropInfoDto &&
            (identical(other.itemId, itemId) ||
                const DeepCollectionEquality().equals(other.itemId, itemId)) &&
            (identical(other.dropType, dropType) ||
                const DeepCollectionEquality()
                    .equals(other.dropType, dropType)) &&
            (identical(other.bounds, bounds) ||
                const DeepCollectionEquality().equals(other.bounds, bounds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(itemId) ^
      const DeepCollectionEquality().hash(dropType) ^
      const DeepCollectionEquality().hash(bounds);

  @JsonKey(ignore: true)
  @override
  _$DropInfoDtoCopyWith<_DropInfoDto> get copyWith =>
      __$DropInfoDtoCopyWithImpl<_DropInfoDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DropInfoDtoToJson(this);
  }
}

abstract class _DropInfoDto implements DropInfoDto {
  const factory _DropInfoDto(
      String? itemId, String? dropType, BoundsDto? bounds) = _$_DropInfoDto;

  factory _DropInfoDto.fromJson(Map<String, dynamic> json) =
      _$_DropInfoDto.fromJson;

  @override
  String? get itemId => throw _privateConstructorUsedError;
  @override
  String? get dropType => throw _privateConstructorUsedError;
  @override
  BoundsDto? get bounds => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DropInfoDtoCopyWith<_DropInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}
