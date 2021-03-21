import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../application/item/item_matrix_provider.dart';
import '../../../../core/enums/i18n.dart';
import '../../../../domain/matrix/entities/matrix.dart';
import '../../../../domain/matrix/value_objects/index.dart';
import '../../../core/widgets/list_separator.dart';

final _matrix = Provider.autoDispose(
  (ref) => ref.watch(itemMatrixProvider).matrix,
);

final _matrixProvider = ScopedProvider<Matrix>(null);

class ItemMatrixListView extends ConsumerWidget {
  const ItemMatrixListView();

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final matrix = watch(_matrix);
    return Scrollbar(
      child: ListView.separated(
        itemBuilder: (context, index) => ProviderScope(
          overrides: [_matrixProvider.overrideWithValue(matrix[index])],
          child: const _MatrixTile(),
        ),
        separatorBuilder: (context, index) => const ListSeparator(),
        itemCount: matrix.size,
      ),
    );
  }
}

//* Components

class _MatrixTile extends ConsumerWidget {
  const _MatrixTile();

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final matrix = watch(_matrixProvider);
    return ListTile(
      title: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 1,
            child: Text(matrix.stageCodeI18n[I18n.cn] ?? '--'),
          ),
          Expanded(
            flex: 1,
            child: Text(matrix.expectedSanity.toFixedString()),
          ),
        ],
      ),
      onTap: () {},
    );
  }
}
