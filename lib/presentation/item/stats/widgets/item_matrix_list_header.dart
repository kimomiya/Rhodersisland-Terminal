import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../application/item/item_matrix_provider.dart';

import '../../../../generated/l10n.dart';
import '../../../core/widgets/list_separator.dart';

final _ascending = Provider.autoDispose(
  (ref) => ref.watch(itemMatrixProvider).sortAscending,
);

class ItemMatrixListHeader extends StatelessWidget {
  const ItemMatrixListHeader();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTileTheme(
          dense: true,
          textColor: Colors.grey[600],
          child: ListTile(
            title: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(flex: 1, child: Text(S.of(context).stage)),
                Expanded(flex: 1, child: _buildSortSection()),
              ],
            ),
            onTap: context.read(itemMatrixProvider).toggleSortingDirection,
          ),
        ),
        const ListSeparator(),
      ],
    );
  }

  //* Components

  Widget _buildSortSection() {
    return Consumer(
      builder: (context, watch, child) {
        final ascending = watch(_ascending);
        return Row(
          children: [
            Text(S.of(context).expectedSanity),
            const SizedBox(width: 4),
            Icon(
              ascending
                  ? FontAwesomeIcons.sortAmountDownAlt
                  : FontAwesomeIcons.sortAmountDown,
              size: 14,
              color: Colors.grey[600],
            ),
          ],
        );
      },
    );
  }
}
