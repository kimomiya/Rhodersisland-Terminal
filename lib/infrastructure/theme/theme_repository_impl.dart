import 'package:injectable/injectable.dart';

import '../../core/enums/theme_type.dart';
import '../../domain/theme/theme_repository.dart';
import '../../shared/logger.dart';
import 'data_sources/theme_local_data_source.dart';

@LazySingleton(as: ThemeRepository)
class ThemeRepositoryImpl implements ThemeRepository {
  const ThemeRepositoryImpl(
    this._localDataSource,
  );

  final ThemeLocalDataSource _localDataSource;

  @override
  ThemeType loadTheme() {
    try {
      return _localDataSource.loadTheme();
    } catch (e) {
      logger.e(e.toString(), e);
      return null;
    }
  }

  @override
  Future<ThemeType> saveTheme(ThemeType theme) async {
    try {
      await _localDataSource.saveTheme(theme);
      return _localDataSource.loadTheme();
    } catch (e) {
      logger.e(e.toString(), e);
      return null;
    }
  }
}
