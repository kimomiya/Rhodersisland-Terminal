import 'package:dartz/dartz.dart';

import '../value_failure.dart';

Either<ValueFailure<double>, double> validateDropRate(
  int quantity,
  int times,
) {
  if (quantity <= 0 || times <= 0) {
    return left(const ValueFailure.invalidDropRate());
  }

  return right(quantity / times);
}
