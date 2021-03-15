import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

import 'entities/stage.dart';
import 'stage_failure.dart';

abstract class StageRepository {
  Future<Either<StageFailure, Unit>> fetchAndSaveAll();

  Future<Either<StageFailure, KtList<Stage>>> loadAll();
}
