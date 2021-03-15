import 'package:freezed_annotation/freezed_annotation.dart';

part 'stage_failure.freezed.dart';

@freezed
class StageFailure with _$StageFailure {
  const factory StageFailure.remoteServerError({
    required int code,
    required String description,
  }) = _RemoteServerError;

  const factory StageFailure.unexpectedError() = _UnexpectedError;
}
