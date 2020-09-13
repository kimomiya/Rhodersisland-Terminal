import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../core/app_failure.dart';
import '../../data/character/character_repository.dart';
import '../../data/character/entities/character.dart';

part 'character_cubit.freezed.dart';
part 'character_state.dart';

@injectable
class CharacterCubit extends Cubit<CharacterState> {
  CharacterCubit(this._repository) : super(const _Initial());

  final CharacterRepository _repository;

  Future<void> getCharacterBy(String id) async {
    emit(const _GetCharacterInProgress());

    final failureOrCharacter = await _repository.getCharacterBy(id);

    failureOrCharacter.fold(
      (failure) => emit(_GetCharacterFailure(failure)),
      (character) => emit(_GetCharacterSuccess(character)),
    );
  }
}
