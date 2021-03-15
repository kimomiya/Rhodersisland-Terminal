import 'package:dartz/dartz.dart';

import '../../core/validators/validate_expected_sanity.dart';
import '../../core/value_failure.dart';
import '../../core/value_object.dart';

class ExpectedSanity extends ValueObject<double> {
  factory ExpectedSanity(int quantity, int times, int apCost) {
    return ExpectedSanity._(validateExpectedSanity(quantity, times, apCost));
  }

  const ExpectedSanity._(this.value);

  @override
  final Either<ValueFailure<double>, double> value;
}

extension ExpectedSanityValues on ExpectedSanity {
  String toFixedString() {
    return value.fold(
      (_) => 'N/A',
      (value) => value.toStringAsFixed(2),
    );
  }
}
