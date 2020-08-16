import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';

import '../../../core/enums/realm.dart';
import '../../../shared/app_settings.dart';
import '../models/tip.dart';

abstract class TipLocalDataSource {
  Future<Tip> getRandomTip();

  Future<void> saveTips(List<Tip> tips);
}

@LazySingleton(as: TipLocalDataSource)
class TipLocalDataSourceImpl implements TipLocalDataSource {
  const TipLocalDataSourceImpl({
    @required this.db,
    @required this.settings,
  });

  final Database db;
  final AppSettings settings;

  @override
  Future<Tip> getRandomTip() async {
    final results = await db.query(
      _tableName,
      orderBy: 'RANDOM()',
      limit: 1,
    );
    return Tip.fromJson(results.first);
  }

  @override
  Future<void> saveTips(List<Tip> tips) async {
    await db.delete(_tableName);

    final sqls = <Future<void>>[];
    for (final tip in tips) {
      sqls.add(db.insert(_tableName, tip.toJson()));
    }

    await Future.wait(sqls);
  }

  String get _tableName {
    final realm = settings.getServerRealm();
    return '${realm.value}_${Tip.tableName}';
  }
}
