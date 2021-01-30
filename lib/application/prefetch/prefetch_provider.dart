import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:injectable/injectable.dart';

import '../../domain/item/item_repository.dart';
import '../../injection.dart';
import 'prefetch_state.dart';

final prefetchProvider = StateNotifierProvider.autoDispose(
  (ref) => locator<PrefetchNotifier>(),
);

@injectable
class PrefetchNotifier extends StateNotifier<PrefetchState> {
  PrefetchNotifier({
    @required this.itemRepository,
  }) : super(PrefetchState.initial()) {
    _fetchAllData();
  }

  final ItemRepository itemRepository;

  Future<void> _fetchAllData() async {
    state = state.copyWith(
      isFetching: true,
      isCompleted: false,
      failureOption: none(),
    );

    final results = await Future.wait([
      itemRepository.fetchAndSaveItems(),
    ]);

    final result = results.firstWhere(
      (result) => result.isLeft(),
      orElse: () => null,
    );
    if (result == null) {
      state = state.copyWith(
        isFetching: false,
        isCompleted: true,
        failureOption: none(),
      );
      return;
    }
    result.fold(
      (failure) => state = state.copyWith(
        isFetching: false,
        failureOption: optionOf(failure),
      ),
      (_) {},
    );
  }
}
