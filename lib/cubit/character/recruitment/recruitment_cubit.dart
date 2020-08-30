import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/app_failure.dart';
import '../../../core/constants/recruitment.dart';
import '../../../core/enums/character/experience.dart';
import '../../../core/enums/character/position.dart';
import '../../../core/enums/character/profession.dart';
import '../../../core/enums/character/tag.dart';
import '../../../data/character/character_repository.dart';
import '../../../data/character/entities/character_lite.dart';

part 'recruitment_cubit.freezed.dart';
part 'recruitment_state.dart';

@lazySingleton
class RecruitmentCubit extends Cubit<RecruitmentState> {
  RecruitmentCubit(this._repository) : super(const _Initial());

  final CharacterRepository _repository;

  Future<void> getOperators() async {
    final failureOrOperators = await _repository.getOperators();

    failureOrOperators.fold(
      (failure) => emit(_GetOperatorsFailure(failure: failure)),
      (operators) => emit(_GetOperatorsSuccess(operators: operators)),
    );
  }

  void filterByRecruitment(List<CharacterLite> operators) {
    // TODO(hiei): waiting i18n implementation
    final recruitableOperators = operators
        .where((op) => recruitableOperatorsNameCN.contains(op.name))
        .toList();
    recruitableOperators.sort(
      (prev, next) => next.rarity.compareTo(prev.rarity),
    );

    emit(_RecruitableOperatorsFiltered(operators: recruitableOperators));
  }

  void selectPosition(bool selected, Position position) {
    emit(_PositionSelected(selected: selected, position: position));
  }

  void selectExperience(bool selected, Experience experience) {
    emit(_ExperienceSelected(selected: selected, experience: experience));
  }

  void selectProfession(bool selected, Profession profession) {
    emit(_ProfessionSelected(selected: selected, profession: profession));
  }

  void selectTag(bool selected, Tag tag) {
    emit(_TagSelected(selected: selected, tag: tag));
  }

  void resetSelection() => emit(const _SelectionReseted());
}
