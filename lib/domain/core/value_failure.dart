import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failure.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.empty() = _Empty<T>;

  const factory ValueFailure.invalidExpectedSanity() =
      _InvalidExpectedSanity<T>;

  const factory ValueFailure.invalidDropRate() = _InvalidDropRate<T>;
}
