import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/enums/realm.dart';
import '../../../shared/app_settings.dart';
import '../../../shared/logger.dart';
import '../models/tip.dart';

abstract class TipRemoteDataSource {
  Future<List<Tip>> fetchTips();
}

@LazySingleton(as: TipRemoteDataSource)
class TipRemoteDataSourceImpl implements TipRemoteDataSource {
  const TipRemoteDataSourceImpl({
    @required this.client,
    @required this.settings,
  });

  final Dio client;
  final AppSettings settings;

  @override
  Future<List<Tip>> fetchTips() async {
    final realm = settings.getServerRealm();
    final url = '/${realm.value}/gamedata/excel/tip_table.json';

    logger.i('Get ~> $url');

    final response = await client.get<String>(url);

    logger.i('Recieved ~> $url');

    final data = jsonDecode(response.data) as Map<String, dynamic>;
    final tipsData = data['tips'] as List;

    final tips = <Tip>[];
    for (final tipData in tipsData) {
      tips.add(Tip.fromJson(tipData as Map<String, dynamic>));
    }

    return tips;
  }
}
