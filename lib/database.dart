import 'dart:async';

import 'package:sqflite/sqflite.dart';

import 'core/enums/realm.dart';
import 'data/character/models/character.dart';

Future<void> onConfigure(Database db) async {
  await db.execute('PRAGMA foreign_keys = ON');
}

Future<void> onCreate(Database db, int version) async {
  final batch = db.batch();
  _createTablesV1(batch);
  await batch.commit();
}

void _createTablesV1(Batch batch) {
  for (final region in Realm.values) {
    batch.execute(
      '''
      CREATE TABLE ${region.value}_${Character.tableName} (
        id TEXT PRIMARY KEY,
        name TEXT,
        description TEXT,
        canUseGeneralPotentialItem INTEGER,
        potentialItemId TEXT,
        team INTEGER,
        displayNumber TEXT,
        appellation TEXT,
        position TEXT,
        tagList TEXT,
        displayLogo TEXT,
        itemUsage TEXT,
        itemDesc TEXT,
        itemObtainApproach TEXT,
        maxPotentialLevel INTEGER,
        rarity INTEGER,
        profession TEXT
      )
      ''',
    );
  }
}
