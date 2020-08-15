import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/enums/realm.dart';
import '../../../shared/app_settings.dart';
import '../models/character.dart';

abstract class CharacterRemoteDataSource {
  Future<List<Character>> fetchCharacterList();
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
  Future<List<Character>> fetchCharacterList() async {
    final realm = settings.getServerRealm();
    final response = await client.get<String>(
      '/${realm.value}/gamedata/excel/character_table.json',
    );

    final data = jsonDecode(response.data) as Map<String, dynamic>;

    final characters = <Character>[];
    for (final key in data.keys) {
      final value = data[key] as Map<String, dynamic>;
      value['id'] = key;
      characters.add(Character.fromJson(value));
    }

    return characters;
  }
}
