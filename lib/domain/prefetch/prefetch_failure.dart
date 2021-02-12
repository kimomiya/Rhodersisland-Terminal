import 'package:freezed_annotation/freezed_annotation.dart';

part 'prefetch_failure.freezed.dart';

@freezed
abstract class PrefetchFailure with _$PrefetchFailure {
  const factory PrefetchFailure.networkUnreachable() = _NetworkUnreachable;

  const factory PrefetchFailure.remoteServerError({
    @required int code,
    @required String description,
  }) = _RemoteServerError;

  const factory PrefetchFailure.unexpectedError() = _UnexpectedError;
}
