// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'prefetch_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PrefetchFailureTearOff {
  const _$PrefetchFailureTearOff();

// ignore: unused_element
  _NetworkUnreachable networkUnreachable() {
    return const _NetworkUnreachable();
  }

// ignore: unused_element
  _RemoteServerError remoteServerError(
      {@required int code, @required String description}) {
    return _RemoteServerError(
      code: code,
      description: description,
    );
  }

// ignore: unused_element
  _UnexpectedError unexpectedError() {
    return const _UnexpectedError();
  }
}

/// @nodoc
// ignore: unused_element
const $PrefetchFailure = _$PrefetchFailureTearOff();

/// @nodoc
mixin _$PrefetchFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult networkUnreachable(),
    @required TResult remoteServerError(int code, String description),
    @required TResult unexpectedError(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult networkUnreachable(),
    TResult remoteServerError(int code, String description),
    TResult unexpectedError(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult networkUnreachable(_NetworkUnreachable value),
    @required TResult remoteServerError(_RemoteServerError value),
    @required TResult unexpectedError(_UnexpectedError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult networkUnreachable(_NetworkUnreachable value),
    TResult remoteServerError(_RemoteServerError value),
    TResult unexpectedError(_UnexpectedError value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $PrefetchFailureCopyWith<$Res> {
  factory $PrefetchFailureCopyWith(
          PrefetchFailure value, $Res Function(PrefetchFailure) then) =
      _$PrefetchFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$PrefetchFailureCopyWithImpl<$Res>
    implements $PrefetchFailureCopyWith<$Res> {
  _$PrefetchFailureCopyWithImpl(this._value, this._then);

  final PrefetchFailure _value;
  // ignore: unused_field
  final $Res Function(PrefetchFailure) _then;
}

/// @nodoc
abstract class _$NetworkUnreachableCopyWith<$Res> {
  factory _$NetworkUnreachableCopyWith(
          _NetworkUnreachable value, $Res Function(_NetworkUnreachable) then) =
      __$NetworkUnreachableCopyWithImpl<$Res>;
}

/// @nodoc
class __$NetworkUnreachableCopyWithImpl<$Res>
    extends _$PrefetchFailureCopyWithImpl<$Res>
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
    return 'PrefetchFailure.networkUnreachable()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NetworkUnreachable);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult networkUnreachable(),
    @required TResult remoteServerError(int code, String description),
    @required TResult unexpectedError(),
  }) {
    assert(networkUnreachable != null);
    assert(remoteServerError != null);
    assert(unexpectedError != null);
    return networkUnreachable();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult networkUnreachable(),
    TResult remoteServerError(int code, String description),
    TResult unexpectedError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (networkUnreachable != null) {
      return networkUnreachable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult networkUnreachable(_NetworkUnreachable value),
    @required TResult remoteServerError(_RemoteServerError value),
    @required TResult unexpectedError(_UnexpectedError value),
  }) {
    assert(networkUnreachable != null);
    assert(remoteServerError != null);
    assert(unexpectedError != null);
    return networkUnreachable(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult networkUnreachable(_NetworkUnreachable value),
    TResult remoteServerError(_RemoteServerError value),
    TResult unexpectedError(_UnexpectedError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (networkUnreachable != null) {
      return networkUnreachable(this);
    }
    return orElse();
  }
}

abstract class _NetworkUnreachable implements PrefetchFailure {
  const factory _NetworkUnreachable() = _$_NetworkUnreachable;
}

/// @nodoc
abstract class _$RemoteServerErrorCopyWith<$Res> {
  factory _$RemoteServerErrorCopyWith(
          _RemoteServerError value, $Res Function(_RemoteServerError) then) =
      __$RemoteServerErrorCopyWithImpl<$Res>;
  $Res call({int code, String description});
}

/// @nodoc
class __$RemoteServerErrorCopyWithImpl<$Res>
    extends _$PrefetchFailureCopyWithImpl<$Res>
    implements _$RemoteServerErrorCopyWith<$Res> {
  __$RemoteServerErrorCopyWithImpl(
      _RemoteServerError _value, $Res Function(_RemoteServerError) _then)
      : super(_value, (v) => _then(v as _RemoteServerError));

  @override
  _RemoteServerError get _value => super._value as _RemoteServerError;

  @override
  $Res call({
    Object code = freezed,
    Object description = freezed,
  }) {
    return _then(_RemoteServerError(
      code: code == freezed ? _value.code : code as int,
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
class _$_RemoteServerError implements _RemoteServerError {
  const _$_RemoteServerError({@required this.code, @required this.description})
      : assert(code != null),
        assert(description != null);

  @override
  final int code;
  @override
  final String description;

  @override
  String toString() {
    return 'PrefetchFailure.remoteServerError(code: $code, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RemoteServerError &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  _$RemoteServerErrorCopyWith<_RemoteServerError> get copyWith =>
      __$RemoteServerErrorCopyWithImpl<_RemoteServerError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult networkUnreachable(),
    @required TResult remoteServerError(int code, String description),
    @required TResult unexpectedError(),
  }) {
    assert(networkUnreachable != null);
    assert(remoteServerError != null);
    assert(unexpectedError != null);
    return remoteServerError(code, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult networkUnreachable(),
    TResult remoteServerError(int code, String description),
    TResult unexpectedError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (remoteServerError != null) {
      return remoteServerError(code, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult networkUnreachable(_NetworkUnreachable value),
    @required TResult remoteServerError(_RemoteServerError value),
    @required TResult unexpectedError(_UnexpectedError value),
  }) {
    assert(networkUnreachable != null);
    assert(remoteServerError != null);
    assert(unexpectedError != null);
    return remoteServerError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult networkUnreachable(_NetworkUnreachable value),
    TResult remoteServerError(_RemoteServerError value),
    TResult unexpectedError(_UnexpectedError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (remoteServerError != null) {
      return remoteServerError(this);
    }
    return orElse();
  }
}

abstract class _RemoteServerError implements PrefetchFailure {
  const factory _RemoteServerError(
      {@required int code,
      @required String description}) = _$_RemoteServerError;

  int get code;
  String get description;
  @JsonKey(ignore: true)
  _$RemoteServerErrorCopyWith<_RemoteServerError> get copyWith;
}

/// @nodoc
abstract class _$UnexpectedErrorCopyWith<$Res> {
  factory _$UnexpectedErrorCopyWith(
          _UnexpectedError value, $Res Function(_UnexpectedError) then) =
      __$UnexpectedErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnexpectedErrorCopyWithImpl<$Res>
    extends _$PrefetchFailureCopyWithImpl<$Res>
    implements _$UnexpectedErrorCopyWith<$Res> {
  __$UnexpectedErrorCopyWithImpl(
      _UnexpectedError _value, $Res Function(_UnexpectedError) _then)
      : super(_value, (v) => _then(v as _UnexpectedError));

  @override
  _UnexpectedError get _value => super._value as _UnexpectedError;
}

/// @nodoc
class _$_UnexpectedError implements _UnexpectedError {
  const _$_UnexpectedError();

  @override
  String toString() {
    return 'PrefetchFailure.unexpectedError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UnexpectedError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult networkUnreachable(),
    @required TResult remoteServerError(int code, String description),
    @required TResult unexpectedError(),
  }) {
    assert(networkUnreachable != null);
    assert(remoteServerError != null);
    assert(unexpectedError != null);
    return unexpectedError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult networkUnreachable(),
    TResult remoteServerError(int code, String description),
    TResult unexpectedError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unexpectedError != null) {
      return unexpectedError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult networkUnreachable(_NetworkUnreachable value),
    @required TResult remoteServerError(_RemoteServerError value),
    @required TResult unexpectedError(_UnexpectedError value),
  }) {
    assert(networkUnreachable != null);
    assert(remoteServerError != null);
    assert(unexpectedError != null);
    return unexpectedError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult networkUnreachable(_NetworkUnreachable value),
    TResult remoteServerError(_RemoteServerError value),
    TResult unexpectedError(_UnexpectedError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unexpectedError != null) {
      return unexpectedError(this);
    }
    return orElse();
  }
}

abstract class _UnexpectedError implements PrefetchFailure {
  const factory _UnexpectedError() = _$_UnexpectedError;
}
