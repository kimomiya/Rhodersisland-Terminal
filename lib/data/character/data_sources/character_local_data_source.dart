import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';

import '../../../core/enums/realm.dart';
import '../../../shared/app_settings.dart';
import '../models/character.dart';

abstract class CharacterLocalDataSource {
  Future<Character> getCharacterBy(String id);

  Future<List<Character>> getCharacterList();

  Future<void> saveCharacterList(List<Character> characters);
}

@LazySingleton(as: CharacterLocalDataSource)
class CharacterLocalDataSourceImpl implements CharacterLocalDataSource {
  const CharacterLocalDataSourceImpl({
    @required this.db,
    @required this.settings,
  });

  final Database db;
  final AppSettings settings;

  @override
  Future<Character> getCharacterBy(String id) async {
    final realm = settings.getServerRealm();
    final results = await db.query(
      '${realm.value}_${Character.tableName}',
      where: 'id = ?',
      whereArgs: <dynamic>[id],
    );
    return Character.fromMap(results.first);
  }

  @override
  Future<List<Character>> getCharacterList() async {
    final realm = settings.getServerRealm();
    final results = await db.query('${realm.value}_${Character.tableName}');

    final characters = <Character>[];
    for (final item in results) {
      characters.add(Character.fromMap(item));
    }

    return characters;
  }

  @override
  Future<void> saveCharacterList(List<Character> characters) async {
    final realm = settings.getServerRealm();
    for (final char in characters) {
      db.execute(
        '''
        REPLACE INTO ${'${realm.value}_${Character.tableName}'} (
          id, name, description, canUseGeneralPotentialItem,
          potentialItemId, team, displayNumber, appellation,
          position, tagList, displayLogo, itemUsage, itemDesc,
          itemObtainApproach, maxPotentialLevel, rarity, profession
        ) VALUES (
          ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?
        )
        ''',
        <dynamic>[
          char.id,
          char.name,
          char.description,
          char.canUseGeneralPotentialItem,
          char.potentialItemId,
          char.team,
          char.displayNumber,
          char.appellation,
          char.position,
          char.tagList.join(','),
          char.displayLogo,
          char.itemUsage,
          char.itemDesc,
          char.itemObtainApproach,
          char.maxPotentialLevel,
          char.rarity,
          char.profession,
        ],
      );
    }
  }
}
