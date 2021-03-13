// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'matrix_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MatrixFailureTearOff {
  const _$MatrixFailureTearOff();

  _RemoteServerError remoteServerError(
      {required int code, required String description}) {
    return _RemoteServerError(
      code: code,
      description: description,
    );
  }

  _UnexpectedError unexpectedError() {
    return const _UnexpectedError();
  }
}

/// @nodoc
const $MatrixFailure = _$MatrixFailureTearOff();

/// @nodoc
mixin _$MatrixFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int code, String description) remoteServerError,
    required TResult Function() unexpectedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int code, String description)? remoteServerError,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RemoteServerError value) remoteServerError,
    required TResult Function(_UnexpectedError value) unexpectedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RemoteServerError value)? remoteServerError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatrixFailureCopyWith<$Res> {
  factory $MatrixFailureCopyWith(
          MatrixFailure value, $Res Function(MatrixFailure) then) =
      _$MatrixFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$MatrixFailureCopyWithImpl<$Res>
    implements $MatrixFailureCopyWith<$Res> {
  _$MatrixFailureCopyWithImpl(this._value, this._then);

  final MatrixFailure _value;
  // ignore: unused_field
  final $Res Function(MatrixFailure) _then;
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
    extends _$MatrixFailureCopyWithImpl<$Res>
    implements _$RemoteServerErrorCopyWith<$Res> {
  __$RemoteServerErrorCopyWithImpl(
      _RemoteServerError _value, $Res Function(_RemoteServerError) _then)
      : super(_value, (v) => _then(v as _RemoteServerError));

  @override
  _RemoteServerError get _value => super._value as _RemoteServerError;

  @override
  $Res call({
    Object? code = freezed,
    Object? description = freezed,
  }) {
    return _then(_RemoteServerError(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_RemoteServerError implements _RemoteServerError {
  const _$_RemoteServerError({required this.code, required this.description});

  @override
  final int code;
  @override
  final String description;

  @override
  String toString() {
    return 'MatrixFailure.remoteServerError(code: $code, description: $description)';
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
  TResult when<TResult extends Object?>({
    required TResult Function(int code, String description) remoteServerError,
    required TResult Function() unexpectedError,
  }) {
    return remoteServerError(code, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int code, String description)? remoteServerError,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) {
    if (remoteServerError != null) {
      return remoteServerError(code, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RemoteServerError value) remoteServerError,
    required TResult Function(_UnexpectedError value) unexpectedError,
  }) {
    return remoteServerError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RemoteServerError value)? remoteServerError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (remoteServerError != null) {
      return remoteServerError(this);
    }
    return orElse();
  }
}

abstract class _RemoteServerError implements MatrixFailure {
  const factory _RemoteServerError(
      {required int code, required String description}) = _$_RemoteServerError;

  int get code => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RemoteServerErrorCopyWith<_RemoteServerError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnexpectedErrorCopyWith<$Res> {
  factory _$UnexpectedErrorCopyWith(
          _UnexpectedError value, $Res Function(_UnexpectedError) then) =
      __$UnexpectedErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnexpectedErrorCopyWithImpl<$Res>
    extends _$MatrixFailureCopyWithImpl<$Res>
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
    return 'MatrixFailure.unexpectedError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UnexpectedError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int code, String description) remoteServerError,
    required TResult Function() unexpectedError,
  }) {
    return unexpectedError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int code, String description)? remoteServerError,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RemoteServerError value) remoteServerError,
    required TResult Function(_UnexpectedError value) unexpectedError,
  }) {
    return unexpectedError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RemoteServerError value)? remoteServerError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError(this);
    }
    return orElse();
  }
}

abstract class _UnexpectedError implements MatrixFailure {
  const factory _UnexpectedError() = _$_UnexpectedError;
}
