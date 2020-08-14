import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';

abstract class CharacterLocalDataSource {}

@LazySingleton(as: CharacterLocalDataSource)
class CharacterLocalDataSourceImpl implements CharacterLocalDataSource {
  const CharacterLocalDataSourceImpl({
    @required this.db,
  });

  final Database db;
}
