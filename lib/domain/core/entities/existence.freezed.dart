// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'existence.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ExistenceTearOff {
  const _$ExistenceTearOff();

// ignore: unused_element
  _Existence call(
      {@required UniqueId id,
      DateTime closeTime,
      @required bool exist,
      DateTime openTime}) {
    return _Existence(
      id: id,
      closeTime: closeTime,
      exist: exist,
      openTime: openTime,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Existence = _$ExistenceTearOff();

/// @nodoc
mixin _$Existence {
  UniqueId get id;
  DateTime get closeTime;
  bool get exist;
  DateTime get openTime;

  @JsonKey(ignore: true)
  $ExistenceCopyWith<Existence> get copyWith;
}

/// @nodoc
abstract class $ExistenceCopyWith<$Res> {
  factory $ExistenceCopyWith(Existence value, $Res Function(Existence) then) =
      _$ExistenceCopyWithImpl<$Res>;
  $Res call({UniqueId id, DateTime closeTime, bool exist, DateTime openTime});
}

/// @nodoc
class _$ExistenceCopyWithImpl<$Res> implements $ExistenceCopyWith<$Res> {
  _$ExistenceCopyWithImpl(this._value, this._then);

  final Existence _value;
  // ignore: unused_field
  final $Res Function(Existence) _then;

  @override
  $Res call({
    Object id = freezed,
    Object closeTime = freezed,
    Object exist = freezed,
    Object openTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      closeTime:
          closeTime == freezed ? _value.closeTime : closeTime as DateTime,
      exist: exist == freezed ? _value.exist : exist as bool,
      openTime: openTime == freezed ? _value.openTime : openTime as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$ExistenceCopyWith<$Res> implements $ExistenceCopyWith<$Res> {
  factory _$ExistenceCopyWith(
          _Existence value, $Res Function(_Existence) then) =
      __$ExistenceCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, DateTime closeTime, bool exist, DateTime openTime});
}

/// @nodoc
class __$ExistenceCopyWithImpl<$Res> extends _$ExistenceCopyWithImpl<$Res>
    implements _$ExistenceCopyWith<$Res> {
  __$ExistenceCopyWithImpl(_Existence _value, $Res Function(_Existence) _then)
      : super(_value, (v) => _then(v as _Existence));

  @override
  _Existence get _value => super._value as _Existence;

  @override
  $Res call({
    Object id = freezed,
    Object closeTime = freezed,
    Object exist = freezed,
    Object openTime = freezed,
  }) {
    return _then(_Existence(
      id: id == freezed ? _value.id : id as UniqueId,
      closeTime:
          closeTime == freezed ? _value.closeTime : closeTime as DateTime,
      exist: exist == freezed ? _value.exist : exist as bool,
      openTime: openTime == freezed ? _value.openTime : openTime as DateTime,
    ));
  }
}

/// @nodoc
class _$_Existence implements _Existence {
  const _$_Existence(
      {@required this.id, this.closeTime, @required this.exist, this.openTime})
      : assert(id != null),
        assert(exist != null);

  @override
  final UniqueId id;
  @override
  final DateTime closeTime;
  @override
  final bool exist;
  @override
  final DateTime openTime;

  @override
  String toString() {
    return 'Existence(id: $id, closeTime: $closeTime, exist: $exist, openTime: $openTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Existence &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
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
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(closeTime) ^
      const DeepCollectionEquality().hash(exist) ^
      const DeepCollectionEquality().hash(openTime);

  @JsonKey(ignore: true)
  @override
  _$ExistenceCopyWith<_Existence> get copyWith =>
      __$ExistenceCopyWithImpl<_Existence>(this, _$identity);
}

abstract class _Existence implements Existence {
  const factory _Existence(
      {@required UniqueId id,
      DateTime closeTime,
      @required bool exist,
      DateTime openTime}) = _$_Existence;

  @override
  UniqueId get id;
  @override
  DateTime get closeTime;
  @override
  bool get exist;
  @override
  DateTime get openTime;
  @override
  @JsonKey(ignore: true)
  _$ExistenceCopyWith<_Existence> get copyWith;
}
