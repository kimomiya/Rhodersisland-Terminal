// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'item_existence_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ItemExistenceDto _$ItemExistenceDtoFromJson(Map<String, dynamic> json) {
  return _ItemExistenceDto.fromJson(json);
}

/// @nodoc
class _$ItemExistenceDtoTearOff {
  const _$ItemExistenceDtoTearOff();

// ignore: unused_element
  _ItemExistenceDto call(
      {@JsonKey(nullable: true) int closeTime,
      @JsonKey(defaultValue: false) bool exist,
      @JsonKey(nullable: true) int openTime,
      String server}) {
    return _ItemExistenceDto(
      closeTime: closeTime,
      exist: exist,
      openTime: openTime,
      server: server,
    );
  }

// ignore: unused_element
  ItemExistenceDto fromJson(Map<String, Object> json) {
    return ItemExistenceDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ItemExistenceDto = _$ItemExistenceDtoTearOff();

/// @nodoc
mixin _$ItemExistenceDto {
  @JsonKey(nullable: true)
  int get closeTime;
  @JsonKey(defaultValue: false)
  bool get exist;
  @JsonKey(nullable: true)
  int get openTime;
  String get server;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ItemExistenceDtoCopyWith<ItemExistenceDto> get copyWith;
}

/// @nodoc
abstract class $ItemExistenceDtoCopyWith<$Res> {
  factory $ItemExistenceDtoCopyWith(
          ItemExistenceDto value, $Res Function(ItemExistenceDto) then) =
      _$ItemExistenceDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(nullable: true) int closeTime,
      @JsonKey(defaultValue: false) bool exist,
      @JsonKey(nullable: true) int openTime,
      String server});
}

/// @nodoc
class _$ItemExistenceDtoCopyWithImpl<$Res>
    implements $ItemExistenceDtoCopyWith<$Res> {
  _$ItemExistenceDtoCopyWithImpl(this._value, this._then);

  final ItemExistenceDto _value;
  // ignore: unused_field
  final $Res Function(ItemExistenceDto) _then;

  @override
  $Res call({
    Object closeTime = freezed,
    Object exist = freezed,
    Object openTime = freezed,
    Object server = freezed,
  }) {
    return _then(_value.copyWith(
      closeTime: closeTime == freezed ? _value.closeTime : closeTime as int,
      exist: exist == freezed ? _value.exist : exist as bool,
      openTime: openTime == freezed ? _value.openTime : openTime as int,
      server: server == freezed ? _value.server : server as String,
    ));
  }
}

/// @nodoc
abstract class _$ItemExistenceDtoCopyWith<$Res>
    implements $ItemExistenceDtoCopyWith<$Res> {
  factory _$ItemExistenceDtoCopyWith(
          _ItemExistenceDto value, $Res Function(_ItemExistenceDto) then) =
      __$ItemExistenceDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(nullable: true) int closeTime,
      @JsonKey(defaultValue: false) bool exist,
      @JsonKey(nullable: true) int openTime,
      String server});
}

/// @nodoc
class __$ItemExistenceDtoCopyWithImpl<$Res>
    extends _$ItemExistenceDtoCopyWithImpl<$Res>
    implements _$ItemExistenceDtoCopyWith<$Res> {
  __$ItemExistenceDtoCopyWithImpl(
      _ItemExistenceDto _value, $Res Function(_ItemExistenceDto) _then)
      : super(_value, (v) => _then(v as _ItemExistenceDto));

  @override
  _ItemExistenceDto get _value => super._value as _ItemExistenceDto;

  @override
  $Res call({
    Object closeTime = freezed,
    Object exist = freezed,
    Object openTime = freezed,
    Object server = freezed,
  }) {
    return _then(_ItemExistenceDto(
      closeTime: closeTime == freezed ? _value.closeTime : closeTime as int,
      exist: exist == freezed ? _value.exist : exist as bool,
      openTime: openTime == freezed ? _value.openTime : openTime as int,
      server: server == freezed ? _value.server : server as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ItemExistenceDto implements _ItemExistenceDto {
  const _$_ItemExistenceDto(
      {@JsonKey(nullable: true) this.closeTime,
      @JsonKey(defaultValue: false) this.exist,
      @JsonKey(nullable: true) this.openTime,
      this.server});

  factory _$_ItemExistenceDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ItemExistenceDtoFromJson(json);

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
  final String server;

  @override
  String toString() {
    return 'ItemExistenceDto(closeTime: $closeTime, exist: $exist, openTime: $openTime, server: $server)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemExistenceDto &&
            (identical(other.closeTime, closeTime) ||
                const DeepCollectionEquality()
                    .equals(other.closeTime, closeTime)) &&
            (identical(other.exist, exist) ||
                const DeepCollectionEquality().equals(other.exist, exist)) &&
            (identical(other.openTime, openTime) ||
                const DeepCollectionEquality()
                    .equals(other.openTime, openTime)) &&
            (identical(other.server, server) ||
                const DeepCollectionEquality().equals(other.server, server)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(closeTime) ^
      const DeepCollectionEquality().hash(exist) ^
      const DeepCollectionEquality().hash(openTime) ^
      const DeepCollectionEquality().hash(server);

  @JsonKey(ignore: true)
  @override
  _$ItemExistenceDtoCopyWith<_ItemExistenceDto> get copyWith =>
      __$ItemExistenceDtoCopyWithImpl<_ItemExistenceDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ItemExistenceDtoToJson(this);
  }
}

abstract class _ItemExistenceDto implements ItemExistenceDto {
  const factory _ItemExistenceDto(
      {@JsonKey(nullable: true) int closeTime,
      @JsonKey(defaultValue: false) bool exist,
      @JsonKey(nullable: true) int openTime,
      String server}) = _$_ItemExistenceDto;

  factory _ItemExistenceDto.fromJson(Map<String, dynamic> json) =
      _$_ItemExistenceDto.fromJson;

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
  String get server;
  @override
  @JsonKey(ignore: true)
  _$ItemExistenceDtoCopyWith<_ItemExistenceDto> get copyWith;
}
