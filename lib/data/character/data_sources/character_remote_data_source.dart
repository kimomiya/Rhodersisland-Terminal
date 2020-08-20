import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/enums/realm.dart';
import '../../../shared/app_settings.dart';
import '../../../shared/logger.dart';
import '../models/character_model.dart';

abstract class CharacterRemoteDataSource {
  Future<List<CharacterModel>> fetchCharacterList();
}

@LazySingleton(as: CharacterRemoteDataSource)
class CharacterRemoteDataSourceImpl implements CharacterRemoteDataSource {
  const CharacterRemoteDataSourceImpl({
    @required this.client,
    @required this.settings,
  });

  final Dio client;
  final AppSettings settings;

  @override
  Future<List<CharacterModel>> fetchCharacterList() async {
    final realm = settings.getServerRealm();
    final url = '/${realm.value}/gamedata/excel/character_table.json';

    logger.i('Get ~> $url');

    final response = await client.get<String>(url);

    logger.i('Recieved ~> $url');

    final data = jsonDecode(response.data) as Map<String, dynamic>;

    final characters = <CharacterModel>[];
    for (final key in data.keys) {
      final value = data[key] as Map<String, dynamic>;
      value['id'] = key;
      characters.add(CharacterModel.fromJson(value));
    }

    return characters;
  }
}
