import 'package:dartz/dartz.dart';

import 'prefetch_failure.dart';

abstract class PrefetchRepository {
  Future<Either<PrefetchFailure, Unit>> fetchAndSave();
}
