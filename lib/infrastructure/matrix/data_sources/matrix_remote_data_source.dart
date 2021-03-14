import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../core/constants/app_constants.dart';
import '../../matrix/dtos/matrix_dto.dart';

abstract class MatrixRemoteDataSource {
  Future<List<MatrixDto>> fetchMatrix();
}

@LazySingleton(as: MatrixRemoteDataSource)
class MatrixRemoteDataSourceImpl implements MatrixRemoteDataSource {
  const MatrixRemoteDataSourceImpl({
    required this.client,
  });

  final Dio client;

  @override
  Future<List<MatrixDto>> fetchMatrix() async {
    const url = '$penguinStatsBaseURL/result/matrix';
    final queryParameters = {
      'show_closed_zones': true,
    };

    final response = await client.get<Map<String, dynamic>>(
      url,
      queryParameters: queryParameters,
    );

    final matrix = <MatrixDto>[];
    for (final data in response.data?['matrix'] ?? <Map>[]) {
      matrix.add(MatrixDto.fromJson(data as Map<String, dynamic>));
    }
    return matrix;
  }
}
