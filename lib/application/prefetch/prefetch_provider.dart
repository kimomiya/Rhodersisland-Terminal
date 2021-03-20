import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';

import '../../core/classes/safety_change_notifier.dart';
import '../../domain/item/item_repository.dart';
import '../../domain/matrix/matrix_repository.dart';
import '../../domain/stage/stage_repository.dart';
import '../../injection.dart';

final prefetchProvider = ChangeNotifierProvider.autoDispose(
  (ref) => locator<PrefetchNotifier>(),
);

@injectable
class PrefetchNotifier extends SafetyChangeNotifier {
  PrefetchNotifier(
    this._stageRepository,
    this._itemRepository,
    this._matrixRepository,
  ) {
    _fetchAndSaveAll();
  }

  final StageRepository _stageRepository;
  final ItemRepository _itemRepository;
  final MatrixRepository _matrixRepository;

  var _isCompleted = false;
  var _hasFailure = false;

  bool get isCompleted => _isCompleted;
  bool get hasFailure => _hasFailure;

  Future<void> _fetchAndSaveAll() async {
    _isCompleted = false;
    _hasFailure = false;

    final fetchAndSaveStages = _stageRepository.fetchAndSaveAll;
    final fetchAndSaveItems = _itemRepository.fetchAndSaveAll;
    final fetchAndSaveMatrix = _matrixRepository.fetchAndSaveAll;
    final results = await Future.wait([
      fetchAndSaveStages(),
      fetchAndSaveItems(),
      fetchAndSaveMatrix(),
    ]);

    final hasFailure = results.any((result) => result.isLeft());
    if (hasFailure) {
      _hasFailure = true;
    } else {
      _isCompleted = true;
    }

    safetyNotifyListeners();
  }
}
