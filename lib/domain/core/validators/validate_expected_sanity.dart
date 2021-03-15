import 'package:dartz/dartz.dart';

import '../value_failure.dart';

Either<ValueFailure<double>, double> validateExpectedSanity(
  int quantity,
  int times,
  int apCost,
) {
  if (quantity <= 0 || times <= 0 || apCost <= 0) {
    return left(const ValueFailure.invalidExpectedSanity());
  }

  return right(apCost / (quantity / times));
}
