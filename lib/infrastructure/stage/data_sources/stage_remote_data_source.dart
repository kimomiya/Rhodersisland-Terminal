import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../core/constants/app_constants.dart';
import '../dtos/stage_dto.dart';

abstract class StageRemoteDataSource {
  Future<List<StageDto>> fetchStages();
}

@LazySingleton(as: StageRemoteDataSource)
class StageRemoteDataSourceImpl implements StageRemoteDataSource {
  const StageRemoteDataSourceImpl({
    required this.client,
  });

  final Dio client;

  @override
  Future<List<StageDto>> fetchStages() async {
    const url = '$penguinStatsBaseURL/stages';

    final response = await client.get<List>(url);

    final items = <StageDto>[];
    for (final data in response.data ?? <dynamic>[]) {
      items.add(StageDto.fromJson(data as Map<String, dynamic>));
    }
    return items;
  }
}
