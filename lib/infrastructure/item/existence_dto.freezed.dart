// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'existence_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ExistenceDto _$ExistenceDtoFromJson(Map<String, dynamic> json) {
  return _ExistenceDto.fromJson(json);
}

/// @nodoc
class _$ExistenceDtoTearOff {
  const _$ExistenceDtoTearOff();

// ignore: unused_element
  _ExistenceDto call(
      {String server,
      @JsonKey(nullable: true) int closeTime,
      @JsonKey(defaultValue: false) bool exist,
      @JsonKey(nullable: true) int openTime}) {
    return _ExistenceDto(
      server: server,
      closeTime: closeTime,
      exist: exist,
      openTime: openTime,
    );
  }

// ignore: unused_element
  ExistenceDto fromJson(Map<String, Object> json) {
    return ExistenceDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ExistenceDto = _$ExistenceDtoTearOff();

/// @nodoc
mixin _$ExistenceDto {
  String get server;
  @JsonKey(nullable: true)
  int get closeTime;
  @JsonKey(defaultValue: false)
  bool get exist;
  @JsonKey(nullable: true)
  int get openTime;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ExistenceDtoCopyWith<ExistenceDto> get copyWith;
}

/// @nodoc
abstract class $ExistenceDtoCopyWith<$Res> {
  factory $ExistenceDtoCopyWith(
          ExistenceDto value, $Res Function(ExistenceDto) then) =
      _$ExistenceDtoCopyWithImpl<$Res>;
  $Res call(
      {String server,
      @JsonKey(nullable: true) int closeTime,
      @JsonKey(defaultValue: false) bool exist,
      @JsonKey(nullable: true) int openTime});
}

/// @nodoc
class _$ExistenceDtoCopyWithImpl<$Res> implements $ExistenceDtoCopyWith<$Res> {
  _$ExistenceDtoCopyWithImpl(this._value, this._then);

  final ExistenceDto _value;
  // ignore: unused_field
  final $Res Function(ExistenceDto) _then;

  @override
  $Res call({
    Object server = freezed,
    Object closeTime = freezed,
    Object exist = freezed,
    Object openTime = freezed,
  }) {
    return _then(_value.copyWith(
      server: server == freezed ? _value.server : server as String,
      closeTime: closeTime == freezed ? _value.closeTime : closeTime as int,
      exist: exist == freezed ? _value.exist : exist as bool,
      openTime: openTime == freezed ? _value.openTime : openTime as int,
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
  $Res call(
      {String server,
      @JsonKey(nullable: true) int closeTime,
      @JsonKey(defaultValue: false) bool exist,
      @JsonKey(nullable: true) int openTime});
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
    Object server = freezed,
    Object closeTime = freezed,
    Object exist = freezed,
    Object openTime = freezed,
  }) {
    return _then(_ExistenceDto(
      server: server == freezed ? _value.server : server as String,
      closeTime: closeTime == freezed ? _value.closeTime : closeTime as int,
      exist: exist == freezed ? _value.exist : exist as bool,
      openTime: openTime == freezed ? _value.openTime : openTime as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ExistenceDto implements _ExistenceDto {
  const _$_ExistenceDto(
      {this.server,
      @JsonKey(nullable: true) this.closeTime,
      @JsonKey(defaultValue: false) this.exist,
      @JsonKey(nullable: true) this.openTime});

  factory _$_ExistenceDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ExistenceDtoFromJson(json);

  @override
  final String server;
  @override
  @JsonKey(nullable: true)
  final int closeTime;
  @override
  @JsonKey(defaultValue: false)
  final bool exist;
  @override
  @JsonKey(nullable: true)
  final int openTime;

  @override
  String toString() {
    return 'ExistenceDto(server: $server, closeTime: $closeTime, exist: $exist, openTime: $openTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExistenceDto &&
            (identical(other.server, server) ||
                const DeepCollectionEquality().equals(other.server, server)) &&
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
      const DeepCollectionEquality().hash(server) ^
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
  const factory _ExistenceDto(
      {String server,
      @JsonKey(nullable: true) int closeTime,
      @JsonKey(defaultValue: false) bool exist,
      @JsonKey(nullable: true) int openTime}) = _$_ExistenceDto;

  factory _ExistenceDto.fromJson(Map<String, dynamic> json) =
      _$_ExistenceDto.fromJson;

  @override
  String get server;
  @override
  @JsonKey(nullable: true)
  int get closeTime;
  @override
  @JsonKey(defaultValue: false)
  bool get exist;
  @override
  @JsonKey(nullable: true)
  int get openTime;
  @override
  @JsonKey(ignore: true)
  _$ExistenceDtoCopyWith<_ExistenceDto> get copyWith;
}
