part of 'recruitment_cubit.dart';

@freezed
abstract class RecruitmentState with _$RecruitmentState {
  const factory RecruitmentState.inital() = _Initial;

  const factory RecruitmentState.getOperatorInProgress() =
      _GetOperatorInProgress;

  const factory RecruitmentState.getOperatorSuccess({
    @required List<CharacterLite> operators,
  }) = _GetOperatorSuccess;

  const factory RecruitmentState.getOperatorFailure({
    @required AppFailure failure,
  }) = _GetOperatorFailure;
}
