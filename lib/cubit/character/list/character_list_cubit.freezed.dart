// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'character_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CharacterListStateTearOff {
  const _$CharacterListStateTearOff();

// ignore: unused_element
  _Initial inital() {
    return const _Initial();
  }

// ignore: unused_element
  _GetInProgress getInProgress() {
    return const _GetInProgress();
  }

// ignore: unused_element
  _GetSuccess getSuccess({@required List<Character> characters}) {
    return _GetSuccess(
      characters: characters,
    );
  }

// ignore: unused_element
  _GetFailure getFailure({@required AppFailure failure}) {
    return _GetFailure(
      failure: failure,
    );
  }

// ignore: unused_element
  _FetchInProgress fetchInProgress() {
    return const _FetchInProgress();
  }

// ignore: unused_element
  _FetchSuccess fetchSuccess() {
    return const _FetchSuccess();
  }

// ignore: unused_element
  _FetchFailure fetchFailure({@required AppFailure failure}) {
    return _FetchFailure(
      failure: failure,
    );
  }
}

// ignore: unused_element
const $CharacterListState = _$CharacterListStateTearOff();

mixin _$CharacterListState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result getInProgress(),
    @required Result getSuccess(List<Character> characters),
    @required Result getFailure(AppFailure failure),
    @required Result fetchInProgress(),
    @required Result fetchSuccess(),
    @required Result fetchFailure(AppFailure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result getInProgress(),
    Result getSuccess(List<Character> characters),
    Result getFailure(AppFailure failure),
    Result fetchInProgress(),
    Result fetchSuccess(),
    Result fetchFailure(AppFailure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inital(_Initial value),
    @required Result getInProgress(_GetInProgress value),
    @required Result getSuccess(_GetSuccess value),
    @required Result getFailure(_GetFailure value),
    @required Result fetchInProgress(_FetchInProgress value),
    @required Result fetchSuccess(_FetchSuccess value),
    @required Result fetchFailure(_FetchFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(_Initial value),
    Result getInProgress(_GetInProgress value),
    Result getSuccess(_GetSuccess value),
    Result getFailure(_GetFailure value),
    Result fetchInProgress(_FetchInProgress value),
    Result fetchSuccess(_FetchSuccess value),
    Result fetchFailure(_FetchFailure value),
    @required Result orElse(),
  });
}

abstract class $CharacterListStateCopyWith<$Res> {
  factory $CharacterListStateCopyWith(
          CharacterListState value, $Res Function(CharacterListState) then) =
      _$CharacterListStateCopyWithImpl<$Res>;
}

class _$CharacterListStateCopyWithImpl<$Res>
    implements $CharacterListStateCopyWith<$Res> {
  _$CharacterListStateCopyWithImpl(this._value, this._then);

  final CharacterListState _value;
  // ignore: unused_field
  final $Res Function(CharacterListState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res>
    extends _$CharacterListStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CharacterListState.inital()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result getInProgress(),
    @required Result getSuccess(List<Character> characters),
    @required Result getFailure(AppFailure failure),
    @required Result fetchInProgress(),
    @required Result fetchSuccess(),
    @required Result fetchFailure(AppFailure failure),
  }) {
    assert(inital != null);
    assert(getInProgress != null);
    assert(getSuccess != null);
    assert(getFailure != null);
    assert(fetchInProgress != null);
    assert(fetchSuccess != null);
    assert(fetchFailure != null);
    return inital();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result getInProgress(),
    Result getSuccess(List<Character> characters),
    Result getFailure(AppFailure failure),
    Result fetchInProgress(),
    Result fetchSuccess(),
    Result fetchFailure(AppFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inital != null) {
      return inital();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inital(_Initial value),
    @required Result getInProgress(_GetInProgress value),
    @required Result getSuccess(_GetSuccess value),
    @required Result getFailure(_GetFailure value),
    @required Result fetchInProgress(_FetchInProgress value),
    @required Result fetchSuccess(_FetchSuccess value),
    @required Result fetchFailure(_FetchFailure value),
  }) {
    assert(inital != null);
    assert(getInProgress != null);
    assert(getSuccess != null);
    assert(getFailure != null);
    assert(fetchInProgress != null);
    assert(fetchSuccess != null);
    assert(fetchFailure != null);
    return inital(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(_Initial value),
    Result getInProgress(_GetInProgress value),
    Result getSuccess(_GetSuccess value),
    Result getFailure(_GetFailure value),
    Result fetchInProgress(_FetchInProgress value),
    Result fetchSuccess(_FetchSuccess value),
    Result fetchFailure(_FetchFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inital != null) {
      return inital(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CharacterListState {
  const factory _Initial() = _$_Initial;
}

abstract class _$GetInProgressCopyWith<$Res> {
  factory _$GetInProgressCopyWith(
          _GetInProgress value, $Res Function(_GetInProgress) then) =
      __$GetInProgressCopyWithImpl<$Res>;
}

class __$GetInProgressCopyWithImpl<$Res>
    extends _$CharacterListStateCopyWithImpl<$Res>
    implements _$GetInProgressCopyWith<$Res> {
  __$GetInProgressCopyWithImpl(
      _GetInProgress _value, $Res Function(_GetInProgress) _then)
      : super(_value, (v) => _then(v as _GetInProgress));

  @override
  _GetInProgress get _value => super._value as _GetInProgress;
}

class _$_GetInProgress implements _GetInProgress {
  const _$_GetInProgress();

  @override
  String toString() {
    return 'CharacterListState.getInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result getInProgress(),
    @required Result getSuccess(List<Character> characters),
    @required Result getFailure(AppFailure failure),
    @required Result fetchInProgress(),
    @required Result fetchSuccess(),
    @required Result fetchFailure(AppFailure failure),
  }) {
    assert(inital != null);
    assert(getInProgress != null);
    assert(getSuccess != null);
    assert(getFailure != null);
    assert(fetchInProgress != null);
    assert(fetchSuccess != null);
    assert(fetchFailure != null);
    return getInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result getInProgress(),
    Result getSuccess(List<Character> characters),
    Result getFailure(AppFailure failure),
    Result fetchInProgress(),
    Result fetchSuccess(),
    Result fetchFailure(AppFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getInProgress != null) {
      return getInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inital(_Initial value),
    @required Result getInProgress(_GetInProgress value),
    @required Result getSuccess(_GetSuccess value),
    @required Result getFailure(_GetFailure value),
    @required Result fetchInProgress(_FetchInProgress value),
    @required Result fetchSuccess(_FetchSuccess value),
    @required Result fetchFailure(_FetchFailure value),
  }) {
    assert(inital != null);
    assert(getInProgress != null);
    assert(getSuccess != null);
    assert(getFailure != null);
    assert(fetchInProgress != null);
    assert(fetchSuccess != null);
    assert(fetchFailure != null);
    return getInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(_Initial value),
    Result getInProgress(_GetInProgress value),
    Result getSuccess(_GetSuccess value),
    Result getFailure(_GetFailure value),
    Result fetchInProgress(_FetchInProgress value),
    Result fetchSuccess(_FetchSuccess value),
    Result fetchFailure(_FetchFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getInProgress != null) {
      return getInProgress(this);
    }
    return orElse();
  }
}

abstract class _GetInProgress implements CharacterListState {
  const factory _GetInProgress() = _$_GetInProgress;
}

abstract class _$GetSuccessCopyWith<$Res> {
  factory _$GetSuccessCopyWith(
          _GetSuccess value, $Res Function(_GetSuccess) then) =
      __$GetSuccessCopyWithImpl<$Res>;
  $Res call({List<Character> characters});
}

class __$GetSuccessCopyWithImpl<$Res>
    extends _$CharacterListStateCopyWithImpl<$Res>
    implements _$GetSuccessCopyWith<$Res> {
  __$GetSuccessCopyWithImpl(
      _GetSuccess _value, $Res Function(_GetSuccess) _then)
      : super(_value, (v) => _then(v as _GetSuccess));

  @override
  _GetSuccess get _value => super._value as _GetSuccess;

  @override
  $Res call({
    Object characters = freezed,
  }) {
    return _then(_GetSuccess(
      characters: characters == freezed
          ? _value.characters
          : characters as List<Character>,
    ));
  }
}

class _$_GetSuccess implements _GetSuccess {
  const _$_GetSuccess({@required this.characters}) : assert(characters != null);

  @override
  final List<Character> characters;

  @override
  String toString() {
    return 'CharacterListState.getSuccess(characters: $characters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetSuccess &&
            (identical(other.characters, characters) ||
                const DeepCollectionEquality()
                    .equals(other.characters, characters)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(characters);

  @override
  _$GetSuccessCopyWith<_GetSuccess> get copyWith =>
      __$GetSuccessCopyWithImpl<_GetSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result getInProgress(),
    @required Result getSuccess(List<Character> characters),
    @required Result getFailure(AppFailure failure),
    @required Result fetchInProgress(),
    @required Result fetchSuccess(),
    @required Result fetchFailure(AppFailure failure),
  }) {
    assert(inital != null);
    assert(getInProgress != null);
    assert(getSuccess != null);
    assert(getFailure != null);
    assert(fetchInProgress != null);
    assert(fetchSuccess != null);
    assert(fetchFailure != null);
    return getSuccess(characters);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result getInProgress(),
    Result getSuccess(List<Character> characters),
    Result getFailure(AppFailure failure),
    Result fetchInProgress(),
    Result fetchSuccess(),
    Result fetchFailure(AppFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getSuccess != null) {
      return getSuccess(characters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inital(_Initial value),
    @required Result getInProgress(_GetInProgress value),
    @required Result getSuccess(_GetSuccess value),
    @required Result getFailure(_GetFailure value),
    @required Result fetchInProgress(_FetchInProgress value),
    @required Result fetchSuccess(_FetchSuccess value),
    @required Result fetchFailure(_FetchFailure value),
  }) {
    assert(inital != null);
    assert(getInProgress != null);
    assert(getSuccess != null);
    assert(getFailure != null);
    assert(fetchInProgress != null);
    assert(fetchSuccess != null);
    assert(fetchFailure != null);
    return getSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(_Initial value),
    Result getInProgress(_GetInProgress value),
    Result getSuccess(_GetSuccess value),
    Result getFailure(_GetFailure value),
    Result fetchInProgress(_FetchInProgress value),
    Result fetchSuccess(_FetchSuccess value),
    Result fetchFailure(_FetchFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getSuccess != null) {
      return getSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetSuccess implements CharacterListState {
  const factory _GetSuccess({@required List<Character> characters}) =
      _$_GetSuccess;

  List<Character> get characters;
  _$GetSuccessCopyWith<_GetSuccess> get copyWith;
}

abstract class _$GetFailureCopyWith<$Res> {
  factory _$GetFailureCopyWith(
          _GetFailure value, $Res Function(_GetFailure) then) =
      __$GetFailureCopyWithImpl<$Res>;
  $Res call({AppFailure failure});

  $AppFailureCopyWith<$Res> get failure;
}

class __$GetFailureCopyWithImpl<$Res>
    extends _$CharacterListStateCopyWithImpl<$Res>
    implements _$GetFailureCopyWith<$Res> {
  __$GetFailureCopyWithImpl(
      _GetFailure _value, $Res Function(_GetFailure) _then)
      : super(_value, (v) => _then(v as _GetFailure));

  @override
  _GetFailure get _value => super._value as _GetFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_GetFailure(
      failure: failure == freezed ? _value.failure : failure as AppFailure,
    ));
  }

  @override
  $AppFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $AppFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

class _$_GetFailure implements _GetFailure {
  const _$_GetFailure({@required this.failure}) : assert(failure != null);

  @override
  final AppFailure failure;

  @override
  String toString() {
    return 'CharacterListState.getFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$GetFailureCopyWith<_GetFailure> get copyWith =>
      __$GetFailureCopyWithImpl<_GetFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result getInProgress(),
    @required Result getSuccess(List<Character> characters),
    @required Result getFailure(AppFailure failure),
    @required Result fetchInProgress(),
    @required Result fetchSuccess(),
    @required Result fetchFailure(AppFailure failure),
  }) {
    assert(inital != null);
    assert(getInProgress != null);
    assert(getSuccess != null);
    assert(getFailure != null);
    assert(fetchInProgress != null);
    assert(fetchSuccess != null);
    assert(fetchFailure != null);
    return getFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result getInProgress(),
    Result getSuccess(List<Character> characters),
    Result getFailure(AppFailure failure),
    Result fetchInProgress(),
    Result fetchSuccess(),
    Result fetchFailure(AppFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getFailure != null) {
      return getFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inital(_Initial value),
    @required Result getInProgress(_GetInProgress value),
    @required Result getSuccess(_GetSuccess value),
    @required Result getFailure(_GetFailure value),
    @required Result fetchInProgress(_FetchInProgress value),
    @required Result fetchSuccess(_FetchSuccess value),
    @required Result fetchFailure(_FetchFailure value),
  }) {
    assert(inital != null);
    assert(getInProgress != null);
    assert(getSuccess != null);
    assert(getFailure != null);
    assert(fetchInProgress != null);
    assert(fetchSuccess != null);
    assert(fetchFailure != null);
    return getFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(_Initial value),
    Result getInProgress(_GetInProgress value),
    Result getSuccess(_GetSuccess value),
    Result getFailure(_GetFailure value),
    Result fetchInProgress(_FetchInProgress value),
    Result fetchSuccess(_FetchSuccess value),
    Result fetchFailure(_FetchFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getFailure != null) {
      return getFailure(this);
    }
    return orElse();
  }
}

abstract class _GetFailure implements CharacterListState {
  const factory _GetFailure({@required AppFailure failure}) = _$_GetFailure;

  AppFailure get failure;
  _$GetFailureCopyWith<_GetFailure> get copyWith;
}

abstract class _$FetchInProgressCopyWith<$Res> {
  factory _$FetchInProgressCopyWith(
          _FetchInProgress value, $Res Function(_FetchInProgress) then) =
      __$FetchInProgressCopyWithImpl<$Res>;
}

class __$FetchInProgressCopyWithImpl<$Res>
    extends _$CharacterListStateCopyWithImpl<$Res>
    implements _$FetchInProgressCopyWith<$Res> {
  __$FetchInProgressCopyWithImpl(
      _FetchInProgress _value, $Res Function(_FetchInProgress) _then)
      : super(_value, (v) => _then(v as _FetchInProgress));

  @override
  _FetchInProgress get _value => super._value as _FetchInProgress;
}

class _$_FetchInProgress implements _FetchInProgress {
  const _$_FetchInProgress();

  @override
  String toString() {
    return 'CharacterListState.fetchInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FetchInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result getInProgress(),
    @required Result getSuccess(List<Character> characters),
    @required Result getFailure(AppFailure failure),
    @required Result fetchInProgress(),
    @required Result fetchSuccess(),
    @required Result fetchFailure(AppFailure failure),
  }) {
    assert(inital != null);
    assert(getInProgress != null);
    assert(getSuccess != null);
    assert(getFailure != null);
    assert(fetchInProgress != null);
    assert(fetchSuccess != null);
    assert(fetchFailure != null);
    return fetchInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result getInProgress(),
    Result getSuccess(List<Character> characters),
    Result getFailure(AppFailure failure),
    Result fetchInProgress(),
    Result fetchSuccess(),
    Result fetchFailure(AppFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchInProgress != null) {
      return fetchInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inital(_Initial value),
    @required Result getInProgress(_GetInProgress value),
    @required Result getSuccess(_GetSuccess value),
    @required Result getFailure(_GetFailure value),
    @required Result fetchInProgress(_FetchInProgress value),
    @required Result fetchSuccess(_FetchSuccess value),
    @required Result fetchFailure(_FetchFailure value),
  }) {
    assert(inital != null);
    assert(getInProgress != null);
    assert(getSuccess != null);
    assert(getFailure != null);
    assert(fetchInProgress != null);
    assert(fetchSuccess != null);
    assert(fetchFailure != null);
    return fetchInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(_Initial value),
    Result getInProgress(_GetInProgress value),
    Result getSuccess(_GetSuccess value),
    Result getFailure(_GetFailure value),
    Result fetchInProgress(_FetchInProgress value),
    Result fetchSuccess(_FetchSuccess value),
    Result fetchFailure(_FetchFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchInProgress != null) {
      return fetchInProgress(this);
    }
    return orElse();
  }
}

abstract class _FetchInProgress implements CharacterListState {
  const factory _FetchInProgress() = _$_FetchInProgress;
}

abstract class _$FetchSuccessCopyWith<$Res> {
  factory _$FetchSuccessCopyWith(
          _FetchSuccess value, $Res Function(_FetchSuccess) then) =
      __$FetchSuccessCopyWithImpl<$Res>;
}

class __$FetchSuccessCopyWithImpl<$Res>
    extends _$CharacterListStateCopyWithImpl<$Res>
    implements _$FetchSuccessCopyWith<$Res> {
  __$FetchSuccessCopyWithImpl(
      _FetchSuccess _value, $Res Function(_FetchSuccess) _then)
      : super(_value, (v) => _then(v as _FetchSuccess));

  @override
  _FetchSuccess get _value => super._value as _FetchSuccess;
}

class _$_FetchSuccess implements _FetchSuccess {
  const _$_FetchSuccess();

  @override
  String toString() {
    return 'CharacterListState.fetchSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FetchSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result getInProgress(),
    @required Result getSuccess(List<Character> characters),
    @required Result getFailure(AppFailure failure),
    @required Result fetchInProgress(),
    @required Result fetchSuccess(),
    @required Result fetchFailure(AppFailure failure),
  }) {
    assert(inital != null);
    assert(getInProgress != null);
    assert(getSuccess != null);
    assert(getFailure != null);
    assert(fetchInProgress != null);
    assert(fetchSuccess != null);
    assert(fetchFailure != null);
    return fetchSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result getInProgress(),
    Result getSuccess(List<Character> characters),
    Result getFailure(AppFailure failure),
    Result fetchInProgress(),
    Result fetchSuccess(),
    Result fetchFailure(AppFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchSuccess != null) {
      return fetchSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inital(_Initial value),
    @required Result getInProgress(_GetInProgress value),
    @required Result getSuccess(_GetSuccess value),
    @required Result getFailure(_GetFailure value),
    @required Result fetchInProgress(_FetchInProgress value),
    @required Result fetchSuccess(_FetchSuccess value),
    @required Result fetchFailure(_FetchFailure value),
  }) {
    assert(inital != null);
    assert(getInProgress != null);
    assert(getSuccess != null);
    assert(getFailure != null);
    assert(fetchInProgress != null);
    assert(fetchSuccess != null);
    assert(fetchFailure != null);
    return fetchSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(_Initial value),
    Result getInProgress(_GetInProgress value),
    Result getSuccess(_GetSuccess value),
    Result getFailure(_GetFailure value),
    Result fetchInProgress(_FetchInProgress value),
    Result fetchSuccess(_FetchSuccess value),
    Result fetchFailure(_FetchFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchSuccess != null) {
      return fetchSuccess(this);
    }
    return orElse();
  }
}

abstract class _FetchSuccess implements CharacterListState {
  const factory _FetchSuccess() = _$_FetchSuccess;
}

abstract class _$FetchFailureCopyWith<$Res> {
  factory _$FetchFailureCopyWith(
          _FetchFailure value, $Res Function(_FetchFailure) then) =
      __$FetchFailureCopyWithImpl<$Res>;
  $Res call({AppFailure failure});

  $AppFailureCopyWith<$Res> get failure;
}

class __$FetchFailureCopyWithImpl<$Res>
    extends _$CharacterListStateCopyWithImpl<$Res>
    implements _$FetchFailureCopyWith<$Res> {
  __$FetchFailureCopyWithImpl(
      _FetchFailure _value, $Res Function(_FetchFailure) _then)
      : super(_value, (v) => _then(v as _FetchFailure));

  @override
  _FetchFailure get _value => super._value as _FetchFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_FetchFailure(
      failure: failure == freezed ? _value.failure : failure as AppFailure,
    ));
  }

  @override
  $AppFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $AppFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

class _$_FetchFailure implements _FetchFailure {
  const _$_FetchFailure({@required this.failure}) : assert(failure != null);

  @override
  final AppFailure failure;

  @override
  String toString() {
    return 'CharacterListState.fetchFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$FetchFailureCopyWith<_FetchFailure> get copyWith =>
      __$FetchFailureCopyWithImpl<_FetchFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result getInProgress(),
    @required Result getSuccess(List<Character> characters),
    @required Result getFailure(AppFailure failure),
    @required Result fetchInProgress(),
    @required Result fetchSuccess(),
    @required Result fetchFailure(AppFailure failure),
  }) {
    assert(inital != null);
    assert(getInProgress != null);
    assert(getSuccess != null);
    assert(getFailure != null);
    assert(fetchInProgress != null);
    assert(fetchSuccess != null);
    assert(fetchFailure != null);
    return fetchFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result getInProgress(),
    Result getSuccess(List<Character> characters),
    Result getFailure(AppFailure failure),
    Result fetchInProgress(),
    Result fetchSuccess(),
    Result fetchFailure(AppFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchFailure != null) {
      return fetchFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inital(_Initial value),
    @required Result getInProgress(_GetInProgress value),
    @required Result getSuccess(_GetSuccess value),
    @required Result getFailure(_GetFailure value),
    @required Result fetchInProgress(_FetchInProgress value),
    @required Result fetchSuccess(_FetchSuccess value),
    @required Result fetchFailure(_FetchFailure value),
  }) {
    assert(inital != null);
    assert(getInProgress != null);
    assert(getSuccess != null);
    assert(getFailure != null);
    assert(fetchInProgress != null);
    assert(fetchSuccess != null);
    assert(fetchFailure != null);
    return fetchFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(_Initial value),
    Result getInProgress(_GetInProgress value),
    Result getSuccess(_GetSuccess value),
    Result getFailure(_GetFailure value),
    Result fetchInProgress(_FetchInProgress value),
    Result fetchSuccess(_FetchSuccess value),
    Result fetchFailure(_FetchFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchFailure != null) {
      return fetchFailure(this);
    }
    return orElse();
  }
}

abstract class _FetchFailure implements CharacterListState {
  const factory _FetchFailure({@required AppFailure failure}) = _$_FetchFailure;

  AppFailure get failure;
  _$FetchFailureCopyWith<_FetchFailure> get copyWith;
}
