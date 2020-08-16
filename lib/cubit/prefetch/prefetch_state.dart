part of 'prefetch_cubit.dart';

@freezed
abstract class PrefetchState with _$PrefetchState {
  const factory PrefetchState.inital() = _Initial;

  const factory PrefetchState.fetchInProgress() = _FetchInProgress;

  const factory PrefetchState.fetchSuccess() = _FetchSuccess;

  const factory PrefetchState.fetchFailure() = _FetchFailure;
}
