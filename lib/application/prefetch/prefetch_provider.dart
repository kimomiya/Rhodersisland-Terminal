import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';

import '../../domain/item/item_repository.dart';
import '../../domain/matrix/matrix_repository.dart';
import '../../injection.dart';

final prefetchProvider = ChangeNotifierProvider.autoDispose(
  (ref) => locator<PrefetchNotifier>(),
);

@injectable
class PrefetchNotifier extends ChangeNotifier {
  PrefetchNotifier(
    this._itemRepository,
    this._matrixRepository,
  ) {
    _fetchAllData();
  }

  final ItemRepository _itemRepository;
  final MatrixRepository _matrixRepository;

  var _isCompleted = false;
  var _hasFailure = false;

  bool get isCompleted => _isCompleted;
  bool get hasFailure => _hasFailure;

  Future<void> _fetchAllData() async {
    _isCompleted = false;
    _hasFailure = false;

    final fetchAndSaveItems = _itemRepository.fetchAndSaveItems;
    final fetchAndSaveMatrix = _matrixRepository.fetchAndSave;
    final results = await Future.wait([
      fetchAndSaveItems(),
      fetchAndSaveMatrix(),
    ]);

    final hasFailure = results.any((result) => result.isLeft());
    if (hasFailure) {
      _hasFailure = true;
    } else {
      _isCompleted = true;
    }

    notifyListeners();
  }
}
