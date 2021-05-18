// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'app_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppFailureTearOff {
  const _$AppFailureTearOff();

  _UnexpectedError unexpectedError(Object e) {
    return _UnexpectedError(
      e,
    );
  }

  _NetworkUnreachable networkUnreachable() {
    return const _NetworkUnreachable();
  }

  _RemoteServer remoteServerError(String message, {int? code}) {
    return _RemoteServer(
      message,
      code: code,
    );
  }

  _LocalDataError localDataError(Object e) {
    return _LocalDataError(
      e,
    );
  }
}

/// @nodoc
const $AppFailure = _$AppFailureTearOff();

/// @nodoc
mixin _$AppFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object e) unexpectedError,
    required TResult Function() networkUnreachable,
    required TResult Function(String message, int? code) remoteServerError,
    required TResult Function(Object e) localDataError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object e)? unexpectedError,
    TResult Function()? networkUnreachable,
    TResult Function(String message, int? code)? remoteServerError,
    TResult Function(Object e)? localDataError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_NetworkUnreachable value) networkUnreachable,
    required TResult Function(_RemoteServer value) remoteServerError,
    required TResult Function(_LocalDataError value) localDataError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_NetworkUnreachable value)? networkUnreachable,
    TResult Function(_RemoteServer value)? remoteServerError,
    TResult Function(_LocalDataError value)? localDataError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppFailureCopyWith<$Res> {
  factory $AppFailureCopyWith(
          AppFailure value, $Res Function(AppFailure) then) =
      _$AppFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppFailureCopyWithImpl<$Res> implements $AppFailureCopyWith<$Res> {
  _$AppFailureCopyWithImpl(this._value, this._then);

  final AppFailure _value;
  // ignore: unused_field
  final $Res Function(AppFailure) _then;
}

/// @nodoc
abstract class _$UnexpectedErrorCopyWith<$Res> {
  factory _$UnexpectedErrorCopyWith(
          _UnexpectedError value, $Res Function(_UnexpectedError) then) =
      __$UnexpectedErrorCopyWithImpl<$Res>;
  $Res call({Object e});
}

/// @nodoc
class __$UnexpectedErrorCopyWithImpl<$Res>
    extends _$AppFailureCopyWithImpl<$Res>
    implements _$UnexpectedErrorCopyWith<$Res> {
  __$UnexpectedErrorCopyWithImpl(
      _UnexpectedError _value, $Res Function(_UnexpectedError) _then)
      : super(_value, (v) => _then(v as _UnexpectedError));

  @override
  _UnexpectedError get _value => super._value as _UnexpectedError;

  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_UnexpectedError(
      e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc

class _$_UnexpectedError implements _UnexpectedError {
  const _$_UnexpectedError(this.e);

  @override
  final Object e;

  @override
  String toString() {
    return 'AppFailure.unexpectedError(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnexpectedError &&
            (identical(other.e, e) ||
                const DeepCollectionEquality().equals(other.e, e)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(e);

  @JsonKey(ignore: true)
  @override
  _$UnexpectedErrorCopyWith<_UnexpectedError> get copyWith =>
      __$UnexpectedErrorCopyWithImpl<_UnexpectedError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object e) unexpectedError,
    required TResult Function() networkUnreachable,
    required TResult Function(String message, int? code) remoteServerError,
    required TResult Function(Object e) localDataError,
  }) {
    return unexpectedError(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object e)? unexpectedError,
    TResult Function()? networkUnreachable,
    TResult Function(String message, int? code)? remoteServerError,
    TResult Function(Object e)? localDataError,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_NetworkUnreachable value) networkUnreachable,
    required TResult Function(_RemoteServer value) remoteServerError,
    required TResult Function(_LocalDataError value) localDataError,
  }) {
    return unexpectedError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_NetworkUnreachable value)? networkUnreachable,
    TResult Function(_RemoteServer value)? remoteServerError,
    TResult Function(_LocalDataError value)? localDataError,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError(this);
    }
    return orElse();
  }
}

abstract class _UnexpectedError implements AppFailure {
  const factory _UnexpectedError(Object e) = _$_UnexpectedError;

  Object get e => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UnexpectedErrorCopyWith<_UnexpectedError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NetworkUnreachableCopyWith<$Res> {
  factory _$NetworkUnreachableCopyWith(
          _NetworkUnreachable value, $Res Function(_NetworkUnreachable) then) =
      __$NetworkUnreachableCopyWithImpl<$Res>;
}

/// @nodoc
class __$NetworkUnreachableCopyWithImpl<$Res>
    extends _$AppFailureCopyWithImpl<$Res>
    implements _$NetworkUnreachableCopyWith<$Res> {
  __$NetworkUnreachableCopyWithImpl(
      _NetworkUnreachable _value, $Res Function(_NetworkUnreachable) _then)
      : super(_value, (v) => _then(v as _NetworkUnreachable));

  @override
  _NetworkUnreachable get _value => super._value as _NetworkUnreachable;
}

/// @nodoc

class _$_NetworkUnreachable implements _NetworkUnreachable {
  const _$_NetworkUnreachable();

  @override
  String toString() {
    return 'AppFailure.networkUnreachable()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NetworkUnreachable);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object e) unexpectedError,
    required TResult Function() networkUnreachable,
    required TResult Function(String message, int? code) remoteServerError,
    required TResult Function(Object e) localDataError,
  }) {
    return networkUnreachable();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object e)? unexpectedError,
    TResult Function()? networkUnreachable,
    TResult Function(String message, int? code)? remoteServerError,
    TResult Function(Object e)? localDataError,
    required TResult orElse(),
  }) {
    if (networkUnreachable != null) {
      return networkUnreachable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_NetworkUnreachable value) networkUnreachable,
    required TResult Function(_RemoteServer value) remoteServerError,
    required TResult Function(_LocalDataError value) localDataError,
  }) {
    return networkUnreachable(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_NetworkUnreachable value)? networkUnreachable,
    TResult Function(_RemoteServer value)? remoteServerError,
    TResult Function(_LocalDataError value)? localDataError,
    required TResult orElse(),
  }) {
    if (networkUnreachable != null) {
      return networkUnreachable(this);
    }
    return orElse();
  }
}

abstract class _NetworkUnreachable implements AppFailure {
  const factory _NetworkUnreachable() = _$_NetworkUnreachable;
}

/// @nodoc
abstract class _$RemoteServerCopyWith<$Res> {
  factory _$RemoteServerCopyWith(
          _RemoteServer value, $Res Function(_RemoteServer) then) =
      __$RemoteServerCopyWithImpl<$Res>;
  $Res call({String message, int? code});
}

/// @nodoc
class __$RemoteServerCopyWithImpl<$Res> extends _$AppFailureCopyWithImpl<$Res>
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
    return 'AppFailure.remoteServerError(message: $message, code: $code)';
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
    required TResult Function(Object e) unexpectedError,
    required TResult Function() networkUnreachable,
    required TResult Function(String message, int? code) remoteServerError,
    required TResult Function(Object e) localDataError,
  }) {
    return remoteServerError(message, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object e)? unexpectedError,
    TResult Function()? networkUnreachable,
    TResult Function(String message, int? code)? remoteServerError,
    TResult Function(Object e)? localDataError,
    required TResult orElse(),
  }) {
    if (remoteServerError != null) {
      return remoteServerError(message, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_NetworkUnreachable value) networkUnreachable,
    required TResult Function(_RemoteServer value) remoteServerError,
    required TResult Function(_LocalDataError value) localDataError,
  }) {
    return remoteServerError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_NetworkUnreachable value)? networkUnreachable,
    TResult Function(_RemoteServer value)? remoteServerError,
    TResult Function(_LocalDataError value)? localDataError,
    required TResult orElse(),
  }) {
    if (remoteServerError != null) {
      return remoteServerError(this);
    }
    return orElse();
  }
}

abstract class _RemoteServer implements AppFailure {
  const factory _RemoteServer(String message, {int? code}) = _$_RemoteServer;

  String get message => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RemoteServerCopyWith<_RemoteServer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LocalDataErrorCopyWith<$Res> {
  factory _$LocalDataErrorCopyWith(
          _LocalDataError value, $Res Function(_LocalDataError) then) =
      __$LocalDataErrorCopyWithImpl<$Res>;
  $Res call({Object e});
}

/// @nodoc
class __$LocalDataErrorCopyWithImpl<$Res> extends _$AppFailureCopyWithImpl<$Res>
    implements _$LocalDataErrorCopyWith<$Res> {
  __$LocalDataErrorCopyWithImpl(
      _LocalDataError _value, $Res Function(_LocalDataError) _then)
      : super(_value, (v) => _then(v as _LocalDataError));

  @override
  _LocalDataError get _value => super._value as _LocalDataError;

  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_LocalDataError(
      e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc

class _$_LocalDataError implements _LocalDataError {
  const _$_LocalDataError(this.e);

  @override
  final Object e;

  @override
  String toString() {
    return 'AppFailure.localDataError(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocalDataError &&
            (identical(other.e, e) ||
                const DeepCollectionEquality().equals(other.e, e)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(e);

  @JsonKey(ignore: true)
  @override
  _$LocalDataErrorCopyWith<_LocalDataError> get copyWith =>
      __$LocalDataErrorCopyWithImpl<_LocalDataError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object e) unexpectedError,
    required TResult Function() networkUnreachable,
    required TResult Function(String message, int? code) remoteServerError,
    required TResult Function(Object e) localDataError,
  }) {
    return localDataError(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object e)? unexpectedError,
    TResult Function()? networkUnreachable,
    TResult Function(String message, int? code)? remoteServerError,
    TResult Function(Object e)? localDataError,
    required TResult orElse(),
  }) {
    if (localDataError != null) {
      return localDataError(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_NetworkUnreachable value) networkUnreachable,
    required TResult Function(_RemoteServer value) remoteServerError,
    required TResult Function(_LocalDataError value) localDataError,
  }) {
    return localDataError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_NetworkUnreachable value)? networkUnreachable,
    TResult Function(_RemoteServer value)? remoteServerError,
    TResult Function(_LocalDataError value)? localDataError,
    required TResult orElse(),
  }) {
    if (localDataError != null) {
      return localDataError(this);
    }
    return orElse();
  }
}

abstract class _LocalDataError implements AppFailure {
  const factory _LocalDataError(Object e) = _$_LocalDataError;

  Object get e => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LocalDataErrorCopyWith<_LocalDataError> get copyWith =>
      throw _privateConstructorUsedError;
}
