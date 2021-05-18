import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_failure.freezed.dart';

@freezed
class AppFailure with _$AppFailure {
  const factory AppFailure.unexpectedError(Object e) = _UnexpectedError;

  const factory AppFailure.networkUnreachable() = _NetworkUnreachable;

  const factory AppFailure.remoteServerError(
    String message, {
    int? code,
  }) = _RemoteServer;

  const factory AppFailure.localDataError(Object e) = _LocalDataError;
}

extension AppFailureMessage on AppFailure {
  String get message => map(
        unexpectedError: (_) => 'unexpectedError',
        networkUnreachable: (_) => 'networkUnreachable',
        remoteServerError: (_) => 'remoteServerError',
        localDataError: (_) => 'localDataError',
      );
}
