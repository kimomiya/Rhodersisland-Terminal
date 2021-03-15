import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

import 'entities/matrix.dart';
import 'matrix_failure.dart';

abstract class MatrixRepository {
  Future<Either<MatrixFailure, Unit>> fetchAndSaveAll();

  Future<Either<MatrixFailure, KtList<Matrix>>> loadByStage(String id);

  Future<Either<MatrixFailure, KtList<Matrix>>> loadByItem(String id);
}
