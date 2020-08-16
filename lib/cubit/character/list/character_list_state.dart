part of 'character_list_cubit.dart';

@freezed
abstract class CharacterListState with _$CharacterListState {
  const factory CharacterListState.inital() = _Initial;

  const factory CharacterListState.getInProgress() = _GetInProgress;

  const factory CharacterListState.getSuccess({
    @required List<Character> characters,
  }) = _GetSuccess;

  const factory CharacterListState.getFailure({
    @required AppFailure failure,
  }) = _GetFailure;

  const factory CharacterListState.fetchInProgress() = _FetchInProgress;

  const factory CharacterListState.fetchSuccess() = _FetchSuccess;

  const factory CharacterListState.fetchFailure({
    @required AppFailure failure,
  }) = _FetchFailure;
}
