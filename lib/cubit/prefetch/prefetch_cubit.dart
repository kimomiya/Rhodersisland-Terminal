import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../data/character/character_repository.dart';
import '../../data/tip/tip_repository.dart';
import '../../shared/app_settings.dart';

part 'prefetch_cubit.freezed.dart';
part 'prefetch_state.dart';

@lazySingleton
class PrefetchCubit extends Cubit<PrefetchState> {
  PrefetchCubit(
    this._settings,
    this._tipRepository,
    this._charRepository,
  ) : super(const _Initial());

  final AppSettings _settings;
  final TipRepository _tipRepository;
  final CharacterRepository _charRepository;

  Future<void> fetchData() async {
    emit(const _FetchInProgress());

    if (_settings.getLastUpdatedDate().isNotEmpty) {
      await Future<void>.delayed(const Duration(seconds: 1));
      emit(const _FetchSuccess());
      return;
    }

    final results = await Future.wait([
      _tipRepository.fetchTips(),
      _charRepository.fetchCharacterList(),
    ]);

    final failure = results.firstWhere(
      (result) => result.isLeft(),
      orElse: () => null,
    );
    if (failure == null) {
      _settings.setLastUpdatedDate();
      emit(const _FetchSuccess());
    } else {
      emit(const _FetchFailure());
    }
  }
}
