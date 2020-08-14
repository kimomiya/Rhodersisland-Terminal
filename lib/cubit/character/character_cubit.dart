import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../core/app_failure.dart';
import '../../data/character/character_repository.dart';
import '../../data/character/models/character.dart';

part 'character_cubit.freezed.dart';
part 'character_state.dart';

@injectable
class CharacterCubit extends Cubit<CharacterState> {
  CharacterCubit(this._repository) : super(const _Initial());

  final CharacterRepository _repository;

  Future<void> getCharacter() async {
    emit(const _FetchListInProgress());

    final failureOrCharacters = await _repository.getCharacterList();

    failureOrCharacters.fold(
      (failure) => emit(_FetchListFailure(failure: failure)),
      (characters) => emit(_FetchListSuccess(characters: characters)),
    );
  }
}
