import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';

import '../../../core/enums/realm.dart';
import '../../../shared/app_settings.dart';
import '../models/character_model.dart';

abstract class CharacterLocalDataSource {
  Future<void> saveCharacterList(List<CharacterModel> characters);

  Future<CharacterModel> getCharacterBy(String id);

  Future<List<CharacterModel>> getOperators();
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
  Future<void> saveCharacterList(List<CharacterModel> characters) async {
    final sqls = <Future<void>>[];
    for (final char in characters) {
      sqls.add(db.execute(
        '''
        REPLACE INTO $_tableName (
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
      ));
    }

    await Future.wait(sqls);
  }

  @override
  Future<CharacterModel> getCharacterBy(String id) async {
    final results = await db.query(
      _tableName,
      where: 'id = ?',
      whereArgs: <dynamic>[id],
    );
    return CharacterModel.fromMap(results.first);
  }

  @override
  Future<List<CharacterModel>> getOperators() async {
    final realm = settings.getServerRealm();
    final results = await db.query(
      '${realm.value}_${CharacterModel.tableName}',
      where: 'id LIKE ?',
      whereArgs: <dynamic>['char_%'],
    );

    final characters = <CharacterModel>[];
    for (final item in results) {
      characters.add(CharacterModel.fromMap(item));
    }

    return characters;
  }

  //* Computed Properties

  String get _tableName {
    final realm = settings.getServerRealm();
    return '${realm.value}_${CharacterModel.tableName}';
  }
}
