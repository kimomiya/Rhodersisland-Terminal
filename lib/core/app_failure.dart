import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_failure.freezed.dart';

@freezed
abstract class AppFailure with _$AppFailure {
  const factory AppFailure.networkUnreachable() = NetworkUnreachable;

  const factory AppFailure.remoteServerError({
    @required int code,
    @required String description,
  }) = RemoteServerError;

  const factory AppFailure.noCachedData() = NoCachedData;
}
