// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'character_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CharacterStateTearOff {
  const _$CharacterStateTearOff();

// ignore: unused_element
  _Initial inital() {
    return const _Initial();
  }

// ignore: unused_element
  _FetchListInProgress fetchListInProgress() {
    return const _FetchListInProgress();
  }

// ignore: unused_element
  _FetchListSuccess fetchListSuccess({@required List<Character> characters}) {
    return _FetchListSuccess(
      characters: characters,
    );
  }

// ignore: unused_element
  _FetchListFailure fetchListFailure({@required AppFailure failure}) {
    return _FetchListFailure(
      failure: failure,
    );
  }

// ignore: unused_element
  _FetchInProgress fetchInProgress() {
    return const _FetchInProgress();
  }

// ignore: unused_element
  _FetchSuccess fetchSuccess({@required Character character}) {
    return _FetchSuccess(
      character: character,
    );
  }

// ignore: unused_element
  _FetchFailure fetchFailure({@required AppFailure failure}) {
    return _FetchFailure(
      failure: failure,
    );
  }
}

// ignore: unused_element
const $CharacterState = _$CharacterStateTearOff();

mixin _$CharacterState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result fetchListInProgress(),
    @required Result fetchListSuccess(List<Character> characters),
    @required Result fetchListFailure(AppFailure failure),
    @required Result fetchInProgress(),
    @required Result fetchSuccess(Character character),
    @required Result fetchFailure(AppFailure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result fetchListInProgress(),
    Result fetchListSuccess(List<Character> characters),
    Result fetchListFailure(AppFailure failure),
    Result fetchInProgress(),
    Result fetchSuccess(Character character),
    Result fetchFailure(AppFailure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inital(_Initial value),
    @required Result fetchListInProgress(_FetchListInProgress value),
    @required Result fetchListSuccess(_FetchListSuccess value),
    @required Result fetchListFailure(_FetchListFailure value),
    @required Result fetchInProgress(_FetchInProgress value),
    @required Result fetchSuccess(_FetchSuccess value),
    @required Result fetchFailure(_FetchFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(_Initial value),
    Result fetchListInProgress(_FetchListInProgress value),
    Result fetchListSuccess(_FetchListSuccess value),
    Result fetchListFailure(_FetchListFailure value),
    Result fetchInProgress(_FetchInProgress value),
    Result fetchSuccess(_FetchSuccess value),
    Result fetchFailure(_FetchFailure value),
    @required Result orElse(),
  });
}

abstract class $CharacterStateCopyWith<$Res> {
  factory $CharacterStateCopyWith(
          CharacterState value, $Res Function(CharacterState) then) =
      _$CharacterStateCopyWithImpl<$Res>;
}

class _$CharacterStateCopyWithImpl<$Res>
    implements $CharacterStateCopyWith<$Res> {
  _$CharacterStateCopyWithImpl(this._value, this._then);

  final CharacterState _value;
  // ignore: unused_field
  final $Res Function(CharacterState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$CharacterStateCopyWithImpl<$Res>
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
    return 'CharacterState.inital()';
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
    @required Result fetchListInProgress(),
    @required Result fetchListSuccess(List<Character> characters),
    @required Result fetchListFailure(AppFailure failure),
    @required Result fetchInProgress(),
    @required Result fetchSuccess(Character character),
    @required Result fetchFailure(AppFailure failure),
  }) {
    assert(inital != null);
    assert(fetchListInProgress != null);
    assert(fetchListSuccess != null);
    assert(fetchListFailure != null);
    assert(fetchInProgress != null);
    assert(fetchSuccess != null);
    assert(fetchFailure != null);
    return inital();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result fetchListInProgress(),
    Result fetchListSuccess(List<Character> characters),
    Result fetchListFailure(AppFailure failure),
    Result fetchInProgress(),
    Result fetchSuccess(Character character),
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
    @required Result fetchListInProgress(_FetchListInProgress value),
    @required Result fetchListSuccess(_FetchListSuccess value),
    @required Result fetchListFailure(_FetchListFailure value),
    @required Result fetchInProgress(_FetchInProgress value),
    @required Result fetchSuccess(_FetchSuccess value),
    @required Result fetchFailure(_FetchFailure value),
  }) {
    assert(inital != null);
    assert(fetchListInProgress != null);
    assert(fetchListSuccess != null);
    assert(fetchListFailure != null);
    assert(fetchInProgress != null);
    assert(fetchSuccess != null);
    assert(fetchFailure != null);
    return inital(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(_Initial value),
    Result fetchListInProgress(_FetchListInProgress value),
    Result fetchListSuccess(_FetchListSuccess value),
    Result fetchListFailure(_FetchListFailure value),
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

abstract class _Initial implements CharacterState {
  const factory _Initial() = _$_Initial;
}

abstract class _$FetchListInProgressCopyWith<$Res> {
  factory _$FetchListInProgressCopyWith(_FetchListInProgress value,
          $Res Function(_FetchListInProgress) then) =
      __$FetchListInProgressCopyWithImpl<$Res>;
}

class __$FetchListInProgressCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res>
    implements _$FetchListInProgressCopyWith<$Res> {
  __$FetchListInProgressCopyWithImpl(
      _FetchListInProgress _value, $Res Function(_FetchListInProgress) _then)
      : super(_value, (v) => _then(v as _FetchListInProgress));

  @override
  _FetchListInProgress get _value => super._value as _FetchListInProgress;
}

class _$_FetchListInProgress implements _FetchListInProgress {
  const _$_FetchListInProgress();

  @override
  String toString() {
    return 'CharacterState.fetchListInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FetchListInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result fetchListInProgress(),
    @required Result fetchListSuccess(List<Character> characters),
    @required Result fetchListFailure(AppFailure failure),
    @required Result fetchInProgress(),
    @required Result fetchSuccess(Character character),
    @required Result fetchFailure(AppFailure failure),
  }) {
    assert(inital != null);
    assert(fetchListInProgress != null);
    assert(fetchListSuccess != null);
    assert(fetchListFailure != null);
    assert(fetchInProgress != null);
    assert(fetchSuccess != null);
    assert(fetchFailure != null);
    return fetchListInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result fetchListInProgress(),
    Result fetchListSuccess(List<Character> characters),
    Result fetchListFailure(AppFailure failure),
    Result fetchInProgress(),
    Result fetchSuccess(Character character),
    Result fetchFailure(AppFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchListInProgress != null) {
      return fetchListInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inital(_Initial value),
    @required Result fetchListInProgress(_FetchListInProgress value),
    @required Result fetchListSuccess(_FetchListSuccess value),
    @required Result fetchListFailure(_FetchListFailure value),
    @required Result fetchInProgress(_FetchInProgress value),
    @required Result fetchSuccess(_FetchSuccess value),
    @required Result fetchFailure(_FetchFailure value),
  }) {
    assert(inital != null);
    assert(fetchListInProgress != null);
    assert(fetchListSuccess != null);
    assert(fetchListFailure != null);
    assert(fetchInProgress != null);
    assert(fetchSuccess != null);
    assert(fetchFailure != null);
    return fetchListInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(_Initial value),
    Result fetchListInProgress(_FetchListInProgress value),
    Result fetchListSuccess(_FetchListSuccess value),
    Result fetchListFailure(_FetchListFailure value),
    Result fetchInProgress(_FetchInProgress value),
    Result fetchSuccess(_FetchSuccess value),
    Result fetchFailure(_FetchFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchListInProgress != null) {
      return fetchListInProgress(this);
    }
    return orElse();
  }
}

abstract class _FetchListInProgress implements CharacterState {
  const factory _FetchListInProgress() = _$_FetchListInProgress;
}

abstract class _$FetchListSuccessCopyWith<$Res> {
  factory _$FetchListSuccessCopyWith(
          _FetchListSuccess value, $Res Function(_FetchListSuccess) then) =
      __$FetchListSuccessCopyWithImpl<$Res>;
  $Res call({List<Character> characters});
}

class __$FetchListSuccessCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res>
    implements _$FetchListSuccessCopyWith<$Res> {
  __$FetchListSuccessCopyWithImpl(
      _FetchListSuccess _value, $Res Function(_FetchListSuccess) _then)
      : super(_value, (v) => _then(v as _FetchListSuccess));

  @override
  _FetchListSuccess get _value => super._value as _FetchListSuccess;

  @override
  $Res call({
    Object characters = freezed,
  }) {
    return _then(_FetchListSuccess(
      characters: characters == freezed
          ? _value.characters
          : characters as List<Character>,
    ));
  }
}

class _$_FetchListSuccess implements _FetchListSuccess {
  const _$_FetchListSuccess({@required this.characters})
      : assert(characters != null);

  @override
  final List<Character> characters;

  @override
  String toString() {
    return 'CharacterState.fetchListSuccess(characters: $characters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchListSuccess &&
            (identical(other.characters, characters) ||
                const DeepCollectionEquality()
                    .equals(other.characters, characters)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(characters);

  @override
  _$FetchListSuccessCopyWith<_FetchListSuccess> get copyWith =>
      __$FetchListSuccessCopyWithImpl<_FetchListSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result fetchListInProgress(),
    @required Result fetchListSuccess(List<Character> characters),
    @required Result fetchListFailure(AppFailure failure),
    @required Result fetchInProgress(),
    @required Result fetchSuccess(Character character),
    @required Result fetchFailure(AppFailure failure),
  }) {
    assert(inital != null);
    assert(fetchListInProgress != null);
    assert(fetchListSuccess != null);
    assert(fetchListFailure != null);
    assert(fetchInProgress != null);
    assert(fetchSuccess != null);
    assert(fetchFailure != null);
    return fetchListSuccess(characters);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result fetchListInProgress(),
    Result fetchListSuccess(List<Character> characters),
    Result fetchListFailure(AppFailure failure),
    Result fetchInProgress(),
    Result fetchSuccess(Character character),
    Result fetchFailure(AppFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchListSuccess != null) {
      return fetchListSuccess(characters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inital(_Initial value),
    @required Result fetchListInProgress(_FetchListInProgress value),
    @required Result fetchListSuccess(_FetchListSuccess value),
    @required Result fetchListFailure(_FetchListFailure value),
    @required Result fetchInProgress(_FetchInProgress value),
    @required Result fetchSuccess(_FetchSuccess value),
    @required Result fetchFailure(_FetchFailure value),
  }) {
    assert(inital != null);
    assert(fetchListInProgress != null);
    assert(fetchListSuccess != null);
    assert(fetchListFailure != null);
    assert(fetchInProgress != null);
    assert(fetchSuccess != null);
    assert(fetchFailure != null);
    return fetchListSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(_Initial value),
    Result fetchListInProgress(_FetchListInProgress value),
    Result fetchListSuccess(_FetchListSuccess value),
    Result fetchListFailure(_FetchListFailure value),
    Result fetchInProgress(_FetchInProgress value),
    Result fetchSuccess(_FetchSuccess value),
    Result fetchFailure(_FetchFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchListSuccess != null) {
      return fetchListSuccess(this);
    }
    return orElse();
  }
}

abstract class _FetchListSuccess implements CharacterState {
  const factory _FetchListSuccess({@required List<Character> characters}) =
      _$_FetchListSuccess;

  List<Character> get characters;
  _$FetchListSuccessCopyWith<_FetchListSuccess> get copyWith;
}

abstract class _$FetchListFailureCopyWith<$Res> {
  factory _$FetchListFailureCopyWith(
          _FetchListFailure value, $Res Function(_FetchListFailure) then) =
      __$FetchListFailureCopyWithImpl<$Res>;
  $Res call({AppFailure failure});

  $AppFailureCopyWith<$Res> get failure;
}

class __$FetchListFailureCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res>
    implements _$FetchListFailureCopyWith<$Res> {
  __$FetchListFailureCopyWithImpl(
      _FetchListFailure _value, $Res Function(_FetchListFailure) _then)
      : super(_value, (v) => _then(v as _FetchListFailure));

  @override
  _FetchListFailure get _value => super._value as _FetchListFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_FetchListFailure(
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

class _$_FetchListFailure implements _FetchListFailure {
  const _$_FetchListFailure({@required this.failure}) : assert(failure != null);

  @override
  final AppFailure failure;

  @override
  String toString() {
    return 'CharacterState.fetchListFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchListFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$FetchListFailureCopyWith<_FetchListFailure> get copyWith =>
      __$FetchListFailureCopyWithImpl<_FetchListFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result fetchListInProgress(),
    @required Result fetchListSuccess(List<Character> characters),
    @required Result fetchListFailure(AppFailure failure),
    @required Result fetchInProgress(),
    @required Result fetchSuccess(Character character),
    @required Result fetchFailure(AppFailure failure),
  }) {
    assert(inital != null);
    assert(fetchListInProgress != null);
    assert(fetchListSuccess != null);
    assert(fetchListFailure != null);
    assert(fetchInProgress != null);
    assert(fetchSuccess != null);
    assert(fetchFailure != null);
    return fetchListFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result fetchListInProgress(),
    Result fetchListSuccess(List<Character> characters),
    Result fetchListFailure(AppFailure failure),
    Result fetchInProgress(),
    Result fetchSuccess(Character character),
    Result fetchFailure(AppFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchListFailure != null) {
      return fetchListFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inital(_Initial value),
    @required Result fetchListInProgress(_FetchListInProgress value),
    @required Result fetchListSuccess(_FetchListSuccess value),
    @required Result fetchListFailure(_FetchListFailure value),
    @required Result fetchInProgress(_FetchInProgress value),
    @required Result fetchSuccess(_FetchSuccess value),
    @required Result fetchFailure(_FetchFailure value),
  }) {
    assert(inital != null);
    assert(fetchListInProgress != null);
    assert(fetchListSuccess != null);
    assert(fetchListFailure != null);
    assert(fetchInProgress != null);
    assert(fetchSuccess != null);
    assert(fetchFailure != null);
    return fetchListFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(_Initial value),
    Result fetchListInProgress(_FetchListInProgress value),
    Result fetchListSuccess(_FetchListSuccess value),
    Result fetchListFailure(_FetchListFailure value),
    Result fetchInProgress(_FetchInProgress value),
    Result fetchSuccess(_FetchSuccess value),
    Result fetchFailure(_FetchFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchListFailure != null) {
      return fetchListFailure(this);
    }
    return orElse();
  }
}

abstract class _FetchListFailure implements CharacterState {
  const factory _FetchListFailure({@required AppFailure failure}) =
      _$_FetchListFailure;

  AppFailure get failure;
  _$FetchListFailureCopyWith<_FetchListFailure> get copyWith;
}

abstract class _$FetchInProgressCopyWith<$Res> {
  factory _$FetchInProgressCopyWith(
          _FetchInProgress value, $Res Function(_FetchInProgress) then) =
      __$FetchInProgressCopyWithImpl<$Res>;
}

class __$FetchInProgressCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res>
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
    return 'CharacterState.fetchInProgress()';
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
    @required Result fetchListInProgress(),
    @required Result fetchListSuccess(List<Character> characters),
    @required Result fetchListFailure(AppFailure failure),
    @required Result fetchInProgress(),
    @required Result fetchSuccess(Character character),
    @required Result fetchFailure(AppFailure failure),
  }) {
    assert(inital != null);
    assert(fetchListInProgress != null);
    assert(fetchListSuccess != null);
    assert(fetchListFailure != null);
    assert(fetchInProgress != null);
    assert(fetchSuccess != null);
    assert(fetchFailure != null);
    return fetchInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result fetchListInProgress(),
    Result fetchListSuccess(List<Character> characters),
    Result fetchListFailure(AppFailure failure),
    Result fetchInProgress(),
    Result fetchSuccess(Character character),
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
    @required Result fetchListInProgress(_FetchListInProgress value),
    @required Result fetchListSuccess(_FetchListSuccess value),
    @required Result fetchListFailure(_FetchListFailure value),
    @required Result fetchInProgress(_FetchInProgress value),
    @required Result fetchSuccess(_FetchSuccess value),
    @required Result fetchFailure(_FetchFailure value),
  }) {
    assert(inital != null);
    assert(fetchListInProgress != null);
    assert(fetchListSuccess != null);
    assert(fetchListFailure != null);
    assert(fetchInProgress != null);
    assert(fetchSuccess != null);
    assert(fetchFailure != null);
    return fetchInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(_Initial value),
    Result fetchListInProgress(_FetchListInProgress value),
    Result fetchListSuccess(_FetchListSuccess value),
    Result fetchListFailure(_FetchListFailure value),
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

abstract class _FetchInProgress implements CharacterState {
  const factory _FetchInProgress() = _$_FetchInProgress;
}

abstract class _$FetchSuccessCopyWith<$Res> {
  factory _$FetchSuccessCopyWith(
          _FetchSuccess value, $Res Function(_FetchSuccess) then) =
      __$FetchSuccessCopyWithImpl<$Res>;
  $Res call({Character character});

  $CharacterCopyWith<$Res> get character;
}

class __$FetchSuccessCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res>
    implements _$FetchSuccessCopyWith<$Res> {
  __$FetchSuccessCopyWithImpl(
      _FetchSuccess _value, $Res Function(_FetchSuccess) _then)
      : super(_value, (v) => _then(v as _FetchSuccess));

  @override
  _FetchSuccess get _value => super._value as _FetchSuccess;

  @override
  $Res call({
    Object character = freezed,
  }) {
    return _then(_FetchSuccess(
      character:
          character == freezed ? _value.character : character as Character,
    ));
  }

  @override
  $CharacterCopyWith<$Res> get character {
    if (_value.character == null) {
      return null;
    }
    return $CharacterCopyWith<$Res>(_value.character, (value) {
      return _then(_value.copyWith(character: value));
    });
  }
}

class _$_FetchSuccess implements _FetchSuccess {
  const _$_FetchSuccess({@required this.character}) : assert(character != null);

  @override
  final Character character;

  @override
  String toString() {
    return 'CharacterState.fetchSuccess(character: $character)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchSuccess &&
            (identical(other.character, character) ||
                const DeepCollectionEquality()
                    .equals(other.character, character)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(character);

  @override
  _$FetchSuccessCopyWith<_FetchSuccess> get copyWith =>
      __$FetchSuccessCopyWithImpl<_FetchSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result fetchListInProgress(),
    @required Result fetchListSuccess(List<Character> characters),
    @required Result fetchListFailure(AppFailure failure),
    @required Result fetchInProgress(),
    @required Result fetchSuccess(Character character),
    @required Result fetchFailure(AppFailure failure),
  }) {
    assert(inital != null);
    assert(fetchListInProgress != null);
    assert(fetchListSuccess != null);
    assert(fetchListFailure != null);
    assert(fetchInProgress != null);
    assert(fetchSuccess != null);
    assert(fetchFailure != null);
    return fetchSuccess(character);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result fetchListInProgress(),
    Result fetchListSuccess(List<Character> characters),
    Result fetchListFailure(AppFailure failure),
    Result fetchInProgress(),
    Result fetchSuccess(Character character),
    Result fetchFailure(AppFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchSuccess != null) {
      return fetchSuccess(character);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inital(_Initial value),
    @required Result fetchListInProgress(_FetchListInProgress value),
    @required Result fetchListSuccess(_FetchListSuccess value),
    @required Result fetchListFailure(_FetchListFailure value),
    @required Result fetchInProgress(_FetchInProgress value),
    @required Result fetchSuccess(_FetchSuccess value),
    @required Result fetchFailure(_FetchFailure value),
  }) {
    assert(inital != null);
    assert(fetchListInProgress != null);
    assert(fetchListSuccess != null);
    assert(fetchListFailure != null);
    assert(fetchInProgress != null);
    assert(fetchSuccess != null);
    assert(fetchFailure != null);
    return fetchSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(_Initial value),
    Result fetchListInProgress(_FetchListInProgress value),
    Result fetchListSuccess(_FetchListSuccess value),
    Result fetchListFailure(_FetchListFailure value),
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

abstract class _FetchSuccess implements CharacterState {
  const factory _FetchSuccess({@required Character character}) =
      _$_FetchSuccess;

  Character get character;
  _$FetchSuccessCopyWith<_FetchSuccess> get copyWith;
}

abstract class _$FetchFailureCopyWith<$Res> {
  factory _$FetchFailureCopyWith(
          _FetchFailure value, $Res Function(_FetchFailure) then) =
      __$FetchFailureCopyWithImpl<$Res>;
  $Res call({AppFailure failure});

  $AppFailureCopyWith<$Res> get failure;
}

class __$FetchFailureCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res>
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
    return 'CharacterState.fetchFailure(failure: $failure)';
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
    @required Result fetchListInProgress(),
    @required Result fetchListSuccess(List<Character> characters),
    @required Result fetchListFailure(AppFailure failure),
    @required Result fetchInProgress(),
    @required Result fetchSuccess(Character character),
    @required Result fetchFailure(AppFailure failure),
  }) {
    assert(inital != null);
    assert(fetchListInProgress != null);
    assert(fetchListSuccess != null);
    assert(fetchListFailure != null);
    assert(fetchInProgress != null);
    assert(fetchSuccess != null);
    assert(fetchFailure != null);
    return fetchFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result fetchListInProgress(),
    Result fetchListSuccess(List<Character> characters),
    Result fetchListFailure(AppFailure failure),
    Result fetchInProgress(),
    Result fetchSuccess(Character character),
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
    @required Result fetchListInProgress(_FetchListInProgress value),
    @required Result fetchListSuccess(_FetchListSuccess value),
    @required Result fetchListFailure(_FetchListFailure value),
    @required Result fetchInProgress(_FetchInProgress value),
    @required Result fetchSuccess(_FetchSuccess value),
    @required Result fetchFailure(_FetchFailure value),
  }) {
    assert(inital != null);
    assert(fetchListInProgress != null);
    assert(fetchListSuccess != null);
    assert(fetchListFailure != null);
    assert(fetchInProgress != null);
    assert(fetchSuccess != null);
    assert(fetchFailure != null);
    return fetchFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(_Initial value),
    Result fetchListInProgress(_FetchListInProgress value),
    Result fetchListSuccess(_FetchListSuccess value),
    Result fetchListFailure(_FetchListFailure value),
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

abstract class _FetchFailure implements CharacterState {
  const factory _FetchFailure({@required AppFailure failure}) = _$_FetchFailure;

  AppFailure get failure;
  _$FetchFailureCopyWith<_FetchFailure> get copyWith;
}
