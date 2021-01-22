import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';

abstract class ItemLocalDataSource {}

@LazySingleton(as: ItemLocalDataSource)
class ItemLocalDataSourceImpl implements ItemLocalDataSource {
  const ItemLocalDataSourceImpl({
    @required this.db,
  });

  final Database db;
}
