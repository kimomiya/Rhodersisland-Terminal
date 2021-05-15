import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_failure.freezed.dart';

@freezed
class ItemFailure with _$ItemFailure {
  const factory ItemFailure.unexpected(Object e) = _Unexpected;

  const factory ItemFailure.remoteServer(
    String message, {
    int? code,
  }) = _RemoteServer;
}
