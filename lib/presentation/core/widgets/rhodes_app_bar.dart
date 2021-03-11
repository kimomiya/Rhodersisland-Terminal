import 'package:flutter/material.dart';

class RhodesAppBar extends StatelessWidget implements PreferredSizeWidget {
  const RhodesAppBar({
    required this.title,
    this.actions,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  final Widget title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      actions: actions,
    );
  }
}
