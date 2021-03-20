import 'package:dartz/dartz.dart';

import '../../core/validators/validate_drop_rate.dart';
import '../../core/value_failure.dart';
import '../../core/value_object.dart';

class DropRate extends ValueObject<double> {
  factory DropRate(int quantity, int times) {
    return DropRate._(validateDropRate(quantity, times));
  }

  const DropRate._(this.value);

  @override
  final Either<ValueFailure<double>, double> value;
}

extension DropRateValues on DropRate {
  String toFixedString() {
    return value.fold(
      (_) => '--',
      (value) => (value * 100).toStringAsFixed(2) + '%',
    );
  }
}
