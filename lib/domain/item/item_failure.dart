import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_failure.freezed.dart';

@freezed
abstract class ItemFailure with _$ItemFailure {
  const factory ItemFailure.networkUnreachable() = _NetworkUnreachable;

  const factory ItemFailure.remoteServerError({
    @required int code,
    @required String description,
  }) = _RemoteServerError;

  const factory ItemFailure.noCachedData() = _NoCachedData;
}
