part of 'recruitment_cubit.dart';

@freezed
abstract class RecruitmentState with _$RecruitmentState {
  const factory RecruitmentState.inital() = _Initial;

  const factory RecruitmentState.getOperatorsInProgress() =
      _GetOperatorsInProgress;

  const factory RecruitmentState.getOperatorsSuccess({
    @required List<CharacterLite> operators,
  }) = _GetOperatorsSuccess;

  const factory RecruitmentState.getOperatorsFailure({
    @required AppFailure failure,
  }) = _GetOperatorsFailure;

  const factory RecruitmentState.positionSelected({
    @required bool selected,
    @required Position position,
  }) = _PositionSelected;

  const factory RecruitmentState.experienceSelected({
    @required bool selected,
    @required Experience experience,
  }) = _ExperienceSelected;

  const factory RecruitmentState.professionSelected({
    @required bool selected,
    @required Profession profession,
  }) = _ProfessionSelected;

  const factory RecruitmentState.tagSelected({
    @required bool selected,
    @required Tag tag,
  }) = _TagSelected;

  const factory RecruitmentState.selectionReseted() = _SelectionReseted;
}
