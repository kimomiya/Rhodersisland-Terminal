import 'package:flutter/material.dart';

class RhodesAppBar extends StatelessWidget implements PreferredSizeWidget {
  const RhodesAppBar({
    Key key,
    this.title,
    this.actions,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  final String title;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      actions: actions,
    );
  }
}
