part of 'character_cubit.dart';

@freezed
abstract class CharacterState with _$CharacterState {
  const factory CharacterState.inital() = _Initial;

  const factory CharacterState.getCharacterInProgress() =
      _GetCharacterInProgress;

  const factory CharacterState.getCharacterSuccess(
    Character character,
  ) = _GetCharacterSuccess;

  const factory CharacterState.getCharacterFailure(
    AppFailure failure,
  ) = _GetCharacterFailure;
}
