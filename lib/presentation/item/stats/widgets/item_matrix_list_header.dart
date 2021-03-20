import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../../../core/widgets/list_separator.dart';

class ItemMatrixListHeader extends StatelessWidget {
  const ItemMatrixListHeader();

  @override
  Widget build(BuildContext context) {
    final i18n = S.of(context);
    return Column(
      children: [
        ListTile(
          title: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(flex: 1, child: Text(i18n.stage)),
              Expanded(flex: 1, child: Text(i18n.expectedSanity)),
            ],
          ),
          dense: true,
        ),
        const ListSeparator(),
      ],
    );
  }
}
