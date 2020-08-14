part of 'character_cubit.dart';

@freezed
abstract class CharacterState with _$CharacterState {
  const factory CharacterState.inital() = _Initial;

  const factory CharacterState.fetchListInProgress() = _FetchListInProgress;

  const factory CharacterState.fetchListSuccess({
    @required List<Character> characters,
  }) = _FetchListSuccess;

  const factory CharacterState.fetchListFailure({
    @required AppFailure failure,
  }) = _FetchListFailure;

  const factory CharacterState.fetchInProgress() = _FetchInProgress;

  const factory CharacterState.fetchSuccess({
    @required Character character,
  }) = _FetchSuccess;

  const factory CharacterState.fetchFailure({
    @required AppFailure failure,
  }) = _FetchFailure;
}
