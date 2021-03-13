import 'package:freezed_annotation/freezed_annotation.dart';

part 'matrix_failure.freezed.dart';

@freezed
class MatrixFailure with _$MatrixFailure {
  const factory MatrixFailure.remoteServerError({
    required int code,
    required String description,
  }) = _RemoteServerError;

  const factory MatrixFailure.unexpectedError() = _UnexpectedError;
}
