// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'app_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AppFailureTearOff {
  const _$AppFailureTearOff();

// ignore: unused_element
  NetworkUnreachable networkUnreachable() {
    return const NetworkUnreachable();
  }

// ignore: unused_element
  RemoteServerError remoteServerError(
      {@required int code, @required String description}) {
    return RemoteServerError(
      code: code,
      description: description,
    );
  }

// ignore: unused_element
  NoCachedData noCachedData() {
    return const NoCachedData();
  }
}

/// @nodoc
// ignore: unused_element
const $AppFailure = _$AppFailureTearOff();

/// @nodoc
mixin _$AppFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result networkUnreachable(),
    @required Result remoteServerError(int code, String description),
    @required Result noCachedData(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result networkUnreachable(),
    Result remoteServerError(int code, String description),
    Result noCachedData(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result networkUnreachable(NetworkUnreachable value),
    @required Result remoteServerError(RemoteServerError value),
    @required Result noCachedData(NoCachedData value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result networkUnreachable(NetworkUnreachable value),
    Result remoteServerError(RemoteServerError value),
    Result noCachedData(NoCachedData value),
    @required Result orElse(),
  });
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
abstract class $NetworkUnreachableCopyWith<$Res> {
  factory $NetworkUnreachableCopyWith(
          NetworkUnreachable value, $Res Function(NetworkUnreachable) then) =
      _$NetworkUnreachableCopyWithImpl<$Res>;
}

/// @nodoc
class _$NetworkUnreachableCopyWithImpl<$Res>
    extends _$AppFailureCopyWithImpl<$Res>
    implements $NetworkUnreachableCopyWith<$Res> {
  _$NetworkUnreachableCopyWithImpl(
      NetworkUnreachable _value, $Res Function(NetworkUnreachable) _then)
      : super(_value, (v) => _then(v as NetworkUnreachable));

  @override
  NetworkUnreachable get _value => super._value as NetworkUnreachable;
}

/// @nodoc
class _$NetworkUnreachable implements NetworkUnreachable {
  const _$NetworkUnreachable();

  @override
  String toString() {
    return 'AppFailure.networkUnreachable()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NetworkUnreachable);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result networkUnreachable(),
    @required Result remoteServerError(int code, String description),
    @required Result noCachedData(),
  }) {
    assert(networkUnreachable != null);
    assert(remoteServerError != null);
    assert(noCachedData != null);
    return networkUnreachable();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result networkUnreachable(),
    Result remoteServerError(int code, String description),
    Result noCachedData(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (networkUnreachable != null) {
      return networkUnreachable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result networkUnreachable(NetworkUnreachable value),
    @required Result remoteServerError(RemoteServerError value),
    @required Result noCachedData(NoCachedData value),
  }) {
    assert(networkUnreachable != null);
    assert(remoteServerError != null);
    assert(noCachedData != null);
    return networkUnreachable(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result networkUnreachable(NetworkUnreachable value),
    Result remoteServerError(RemoteServerError value),
    Result noCachedData(NoCachedData value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (networkUnreachable != null) {
      return networkUnreachable(this);
    }
    return orElse();
  }
}

abstract class NetworkUnreachable implements AppFailure {
  const factory NetworkUnreachable() = _$NetworkUnreachable;
}

/// @nodoc
abstract class $RemoteServerErrorCopyWith<$Res> {
  factory $RemoteServerErrorCopyWith(
          RemoteServerError value, $Res Function(RemoteServerError) then) =
      _$RemoteServerErrorCopyWithImpl<$Res>;
  $Res call({int code, String description});
}

/// @nodoc
class _$RemoteServerErrorCopyWithImpl<$Res>
    extends _$AppFailureCopyWithImpl<$Res>
    implements $RemoteServerErrorCopyWith<$Res> {
  _$RemoteServerErrorCopyWithImpl(
      RemoteServerError _value, $Res Function(RemoteServerError) _then)
      : super(_value, (v) => _then(v as RemoteServerError));

  @override
  RemoteServerError get _value => super._value as RemoteServerError;

  @override
  $Res call({
    Object code = freezed,
    Object description = freezed,
  }) {
    return _then(RemoteServerError(
      code: code == freezed ? _value.code : code as int,
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
class _$RemoteServerError implements RemoteServerError {
  const _$RemoteServerError({@required this.code, @required this.description})
      : assert(code != null),
        assert(description != null);

  @override
  final int code;
  @override
  final String description;

  @override
  String toString() {
    return 'AppFailure.remoteServerError(code: $code, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RemoteServerError &&
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

  @override
  $RemoteServerErrorCopyWith<RemoteServerError> get copyWith =>
      _$RemoteServerErrorCopyWithImpl<RemoteServerError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result networkUnreachable(),
    @required Result remoteServerError(int code, String description),
    @required Result noCachedData(),
  }) {
    assert(networkUnreachable != null);
    assert(remoteServerError != null);
    assert(noCachedData != null);
    return remoteServerError(code, description);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result networkUnreachable(),
    Result remoteServerError(int code, String description),
    Result noCachedData(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (remoteServerError != null) {
      return remoteServerError(code, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result networkUnreachable(NetworkUnreachable value),
    @required Result remoteServerError(RemoteServerError value),
    @required Result noCachedData(NoCachedData value),
  }) {
    assert(networkUnreachable != null);
    assert(remoteServerError != null);
    assert(noCachedData != null);
    return remoteServerError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result networkUnreachable(NetworkUnreachable value),
    Result remoteServerError(RemoteServerError value),
    Result noCachedData(NoCachedData value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (remoteServerError != null) {
      return remoteServerError(this);
    }
    return orElse();
  }
}

abstract class RemoteServerError implements AppFailure {
  const factory RemoteServerError(
      {@required int code, @required String description}) = _$RemoteServerError;

  int get code;
  String get description;
  $RemoteServerErrorCopyWith<RemoteServerError> get copyWith;
}

/// @nodoc
abstract class $NoCachedDataCopyWith<$Res> {
  factory $NoCachedDataCopyWith(
          NoCachedData value, $Res Function(NoCachedData) then) =
      _$NoCachedDataCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoCachedDataCopyWithImpl<$Res> extends _$AppFailureCopyWithImpl<$Res>
    implements $NoCachedDataCopyWith<$Res> {
  _$NoCachedDataCopyWithImpl(
      NoCachedData _value, $Res Function(NoCachedData) _then)
      : super(_value, (v) => _then(v as NoCachedData));

  @override
  NoCachedData get _value => super._value as NoCachedData;
}

/// @nodoc
class _$NoCachedData implements NoCachedData {
  const _$NoCachedData();

  @override
  String toString() {
    return 'AppFailure.noCachedData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NoCachedData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result networkUnreachable(),
    @required Result remoteServerError(int code, String description),
    @required Result noCachedData(),
  }) {
    assert(networkUnreachable != null);
    assert(remoteServerError != null);
    assert(noCachedData != null);
    return noCachedData();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result networkUnreachable(),
    Result remoteServerError(int code, String description),
    Result noCachedData(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noCachedData != null) {
      return noCachedData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result networkUnreachable(NetworkUnreachable value),
    @required Result remoteServerError(RemoteServerError value),
    @required Result noCachedData(NoCachedData value),
  }) {
    assert(networkUnreachable != null);
    assert(remoteServerError != null);
    assert(noCachedData != null);
    return noCachedData(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result networkUnreachable(NetworkUnreachable value),
    Result remoteServerError(RemoteServerError value),
    Result noCachedData(NoCachedData value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noCachedData != null) {
      return noCachedData(this);
    }
    return orElse();
  }
}

abstract class NoCachedData implements AppFailure {
  const factory NoCachedData() = _$NoCachedData;
}
