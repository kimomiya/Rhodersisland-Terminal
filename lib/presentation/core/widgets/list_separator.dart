import 'package:flutter/material.dart';

class ListSeparator extends StatelessWidget {
  const ListSeparator();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      height: 0.3,
      margin: const EdgeInsets.symmetric(horizontal: 12),
    );
  }
}
