import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';

import '../../domain/item/item_repository.dart';
import '../../injection.dart';

final prefetchProvider = ChangeNotifierProvider.autoDispose(
  (ref) => locator<PrefetchNotifier>(),
);

@injectable
class PrefetchNotifier extends ChangeNotifier {
  PrefetchNotifier(
    this._itemRepository,
  ) {
    _fetchAllData();
  }

  final ItemRepository _itemRepository;

  var _isCompleted = false;
  var _hasFailure = false;

  bool get isCompleted => _isCompleted;
  bool get hasFailure => _hasFailure;

  Future<void> _fetchAllData() async {
    _isCompleted = false;
    _hasFailure = false;

    final fetchAndSaveItems = _itemRepository.fetchAndSaveItems;
    final results = await Future.wait([
      fetchAndSaveItems(),
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
