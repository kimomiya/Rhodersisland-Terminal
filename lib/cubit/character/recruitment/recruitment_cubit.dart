import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/app_failure.dart';
import '../../../data/character/character_repository.dart';
import '../../../data/character/entities/character_lite.dart';

part 'recruitment_cubit.freezed.dart';
part 'recruitment_state.dart';

@lazySingleton
class RecruitmentCubit extends Cubit<RecruitmentState> {
  RecruitmentCubit(this._repository) : super(const _Initial());

  final CharacterRepository _repository;

  Future<void> getOperatorList() async {
    emit(const _GetOperatorInProgress());

    final failureOrOperators = await _repository.getOperatorList();

    failureOrOperators.fold(
      (failure) => emit(_GetOperatorFailure(failure: failure)),
      (operators) => emit(_GetOperatorSuccess(operators: operators)),
    );
  }
}
