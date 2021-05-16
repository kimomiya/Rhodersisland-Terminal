// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'item_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ItemFailureTearOff {
  const _$ItemFailureTearOff();

  _Unexpected unexpected(Object e) {
    return _Unexpected(
      e,
    );
  }

  _RemoteServer remoteServer(String message, {int? code}) {
    return _RemoteServer(
      message,
      code: code,
    );
  }
}

/// @nodoc
const $ItemFailure = _$ItemFailureTearOff();

/// @nodoc
mixin _$ItemFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object e) unexpected,
    required TResult Function(String message, int? code) remoteServer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object e)? unexpected,
    TResult Function(String message, int? code)? remoteServer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_RemoteServer value) remoteServer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_RemoteServer value)? remoteServer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemFailureCopyWith<$Res> {
  factory $ItemFailureCopyWith(
          ItemFailure value, $Res Function(ItemFailure) then) =
      _$ItemFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$ItemFailureCopyWithImpl<$Res> implements $ItemFailureCopyWith<$Res> {
  _$ItemFailureCopyWithImpl(this._value, this._then);

  final ItemFailure _value;
  // ignore: unused_field
  final $Res Function(ItemFailure) _then;
}

/// @nodoc
abstract class _$UnexpectedCopyWith<$Res> {
  factory _$UnexpectedCopyWith(
          _Unexpected value, $Res Function(_Unexpected) then) =
      __$UnexpectedCopyWithImpl<$Res>;
  $Res call({Object e});
}

/// @nodoc
class __$UnexpectedCopyWithImpl<$Res> extends _$ItemFailureCopyWithImpl<$Res>
    implements _$UnexpectedCopyWith<$Res> {
  __$UnexpectedCopyWithImpl(
      _Unexpected _value, $Res Function(_Unexpected) _then)
      : super(_value, (v) => _then(v as _Unexpected));

  @override
  _Unexpected get _value => super._value as _Unexpected;

  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_Unexpected(
      e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc

class _$_Unexpected implements _Unexpected {
  const _$_Unexpected(this.e);

  @override
  final Object e;

  @override
  String toString() {
    return 'ItemFailure.unexpected(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Unexpected &&
            (identical(other.e, e) ||
                const DeepCollectionEquality().equals(other.e, e)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(e);

  @JsonKey(ignore: true)
  @override
  _$UnexpectedCopyWith<_Unexpected> get copyWith =>
      __$UnexpectedCopyWithImpl<_Unexpected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object e) unexpected,
    required TResult Function(String message, int? code) remoteServer,
  }) {
    return unexpected(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object e)? unexpected,
    TResult Function(String message, int? code)? remoteServer,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_RemoteServer value) remoteServer,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_RemoteServer value)? remoteServer,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements ItemFailure {
  const factory _Unexpected(Object e) = _$_Unexpected;

  Object get e => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UnexpectedCopyWith<_Unexpected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RemoteServerCopyWith<$Res> {
  factory _$RemoteServerCopyWith(
          _RemoteServer value, $Res Function(_RemoteServer) then) =
      __$RemoteServerCopyWithImpl<$Res>;
  $Res call({String message, int? code});
}

/// @nodoc
class __$RemoteServerCopyWithImpl<$Res> extends _$ItemFailureCopyWithImpl<$Res>
    implements _$RemoteServerCopyWith<$Res> {
  __$RemoteServerCopyWithImpl(
      _RemoteServer _value, $Res Function(_RemoteServer) _then)
      : super(_value, (v) => _then(v as _RemoteServer));

  @override
  _RemoteServer get _value => super._value as _RemoteServer;

  @override
  $Res call({
    Object? message = freezed,
    Object? code = freezed,
  }) {
    return _then(_RemoteServer(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_RemoteServer implements _RemoteServer {
  const _$_RemoteServer(this.message, {this.code});

  @override
  final String message;
  @override
  final int? code;

  @override
  String toString() {
    return 'ItemFailure.remoteServer(message: $message, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RemoteServer &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(code);

  @JsonKey(ignore: true)
  @override
  _$RemoteServerCopyWith<_RemoteServer> get copyWith =>
      __$RemoteServerCopyWithImpl<_RemoteServer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object e) unexpected,
    required TResult Function(String message, int? code) remoteServer,
  }) {
    return remoteServer(message, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object e)? unexpected,
    TResult Function(String message, int? code)? remoteServer,
    required TResult orElse(),
  }) {
    if (remoteServer != null) {
      return remoteServer(message, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_RemoteServer value) remoteServer,
  }) {
    return remoteServer(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_RemoteServer value)? remoteServer,
    required TResult orElse(),
  }) {
    if (remoteServer != null) {
      return remoteServer(this);
    }
    return orElse();
  }
}

abstract class _RemoteServer implements ItemFailure {
  const factory _RemoteServer(String message, {int? code}) = _$_RemoteServer;

  String get message => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RemoteServerCopyWith<_RemoteServer> get copyWith =>
      throw _privateConstructorUsedError;
}
