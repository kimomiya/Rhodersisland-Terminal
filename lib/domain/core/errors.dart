import 'value_failure.dart';

class UnexpectedValueError extends Error {
  UnexpectedValueError(this.valueFailure);

  final ValueFailure valueFailure;

  @override
  String toString() {
    return Error.safeToString('ValueFailure: $valueFailure');
  }
}
