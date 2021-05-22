import 'package:dio/dio.dart';

import '../../core/alias/type_alias.dart';
import '../core/constants.dart';
import '../models/stage_model.dart';

const _baseUrl = '$penguinStatsBaseURL/stages';

class StageRemoteDataSource {
  StageRemoteDataSource({required this.client});

  final Dio client;

  Future<List<StageModel>> fetchAll() async {
    final response = await client.get<List>(_baseUrl);
    final stages = <StageModel>[];
    for (final data in response.data ?? <dynamic>[]) {
      stages.add(StageModel.fromJson(data as Json));
    }
    return stages;
  }
}
