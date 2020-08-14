import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../models/character.dart';

const realm = 'ja_JP';

abstract class CharacterRemoteDataSource {
  Future<List<Character>> fetchCharacterList();
}

@LazySingleton(as: CharacterRemoteDataSource)
class CharacterRemoteDataSourceImpl implements CharacterRemoteDataSource {
  const CharacterRemoteDataSourceImpl({
    @required this.client,
  });

  final Dio client;

  @override
  Future<List<Character>> fetchCharacterList() async {
    final response = await client.get<String>(
      '/$realm/gamedata/excel/character_table.json',
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
