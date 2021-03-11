import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_failure.freezed.dart';

@freezed
class ItemFailure with _$ItemFailure {
  const factory ItemFailure.remoteServerError({
    required int code,
    required String description,
  }) = _RemoteServerError;

  const factory ItemFailure.unexpectedError() = _UnexpectedError;

  const factory ItemFailure.emptyQueryResult() = _EmptyQueryResult;
}
