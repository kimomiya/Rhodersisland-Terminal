// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'item_existence.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ItemExistenceTearOff {
  const _$ItemExistenceTearOff();

// ignore: unused_element
  _ItemExistence call(
      {@required UniqueId id,
      DateTime closeTime,
      @required bool exist,
      DateTime openTime,
      @required Server server}) {
    return _ItemExistence(
      id: id,
      closeTime: closeTime,
      exist: exist,
      openTime: openTime,
      server: server,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ItemExistence = _$ItemExistenceTearOff();

/// @nodoc
mixin _$ItemExistence {
  UniqueId get id;
  DateTime get closeTime;
  bool get exist;
  DateTime get openTime;
  Server get server;

  @JsonKey(ignore: true)
  $ItemExistenceCopyWith<ItemExistence> get copyWith;
}

/// @nodoc
abstract class $ItemExistenceCopyWith<$Res> {
  factory $ItemExistenceCopyWith(
          ItemExistence value, $Res Function(ItemExistence) then) =
      _$ItemExistenceCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      DateTime closeTime,
      bool exist,
      DateTime openTime,
      Server server});
}

/// @nodoc
class _$ItemExistenceCopyWithImpl<$Res>
    implements $ItemExistenceCopyWith<$Res> {
  _$ItemExistenceCopyWithImpl(this._value, this._then);

  final ItemExistence _value;
  // ignore: unused_field
  final $Res Function(ItemExistence) _then;

  @override
  $Res call({
    Object id = freezed,
    Object closeTime = freezed,
    Object exist = freezed,
    Object openTime = freezed,
    Object server = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      closeTime:
          closeTime == freezed ? _value.closeTime : closeTime as DateTime,
      exist: exist == freezed ? _value.exist : exist as bool,
      openTime: openTime == freezed ? _value.openTime : openTime as DateTime,
      server: server == freezed ? _value.server : server as Server,
    ));
  }
}

/// @nodoc
abstract class _$ItemExistenceCopyWith<$Res>
    implements $ItemExistenceCopyWith<$Res> {
  factory _$ItemExistenceCopyWith(
          _ItemExistence value, $Res Function(_ItemExistence) then) =
      __$ItemExistenceCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      DateTime closeTime,
      bool exist,
      DateTime openTime,
      Server server});
}

/// @nodoc
class __$ItemExistenceCopyWithImpl<$Res>
    extends _$ItemExistenceCopyWithImpl<$Res>
    implements _$ItemExistenceCopyWith<$Res> {
  __$ItemExistenceCopyWithImpl(
      _ItemExistence _value, $Res Function(_ItemExistence) _then)
      : super(_value, (v) => _then(v as _ItemExistence));

  @override
  _ItemExistence get _value => super._value as _ItemExistence;

  @override
  $Res call({
    Object id = freezed,
    Object closeTime = freezed,
    Object exist = freezed,
    Object openTime = freezed,
    Object server = freezed,
  }) {
    return _then(_ItemExistence(
      id: id == freezed ? _value.id : id as UniqueId,
      closeTime:
          closeTime == freezed ? _value.closeTime : closeTime as DateTime,
      exist: exist == freezed ? _value.exist : exist as bool,
      openTime: openTime == freezed ? _value.openTime : openTime as DateTime,
      server: server == freezed ? _value.server : server as Server,
    ));
  }
}

/// @nodoc
class _$_ItemExistence implements _ItemExistence {
  const _$_ItemExistence(
      {@required this.id,
      this.closeTime,
      @required this.exist,
      this.openTime,
      @required this.server})
      : assert(id != null),
        assert(exist != null),
        assert(server != null);

  @override
  final UniqueId id;
  @override
  final DateTime closeTime;
  @override
  final bool exist;
  @override
  final DateTime openTime;
  @override
  final Server server;

  @override
  String toString() {
    return 'ItemExistence(id: $id, closeTime: $closeTime, exist: $exist, openTime: $openTime, server: $server)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemExistence &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
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
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(closeTime) ^
      const DeepCollectionEquality().hash(exist) ^
      const DeepCollectionEquality().hash(openTime) ^
      const DeepCollectionEquality().hash(server);

  @JsonKey(ignore: true)
  @override
  _$ItemExistenceCopyWith<_ItemExistence> get copyWith =>
      __$ItemExistenceCopyWithImpl<_ItemExistence>(this, _$identity);
}

abstract class _ItemExistence implements ItemExistence {
  const factory _ItemExistence(
      {@required UniqueId id,
      DateTime closeTime,
      @required bool exist,
      DateTime openTime,
      @required Server server}) = _$_ItemExistence;

  @override
  UniqueId get id;
  @override
  DateTime get closeTime;
  @override
  bool get exist;
  @override
  DateTime get openTime;
  @override
  Server get server;
  @override
  @JsonKey(ignore: true)
  _$ItemExistenceCopyWith<_ItemExistence> get copyWith;
}
