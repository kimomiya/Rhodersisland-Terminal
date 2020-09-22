import 'package:flutter/material.dart';

class CharDescriptionText extends StatelessWidget {
  const CharDescriptionText({
    Key key,
    @required this.description,
  }) : super(key: key);

  final String description;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [..._buildTextSpans()],
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }

  List<InlineSpan> _buildTextSpans() {
    final textList = description
        .replaceAll('<@', '__<@')
        .replaceAll('</>', '</>__')
        .split('__');

    final spans = <InlineSpan>[];
    for (final text in textList) {
      if (text.contains(RegExp(r'<@.+?>.+?</>'))) {
        final coloredText =
            text.replaceAll(RegExp(r'<@.+?>'), '').replaceAll('</>', '');
        var color = const Color(0xFF0098DC);
        if (text.contains('<@ba.kw>')) {
          color = const Color(0xFF0098DC);
        }
        if (text.contains('<@ba.talpu>')) {
          color = const Color(0xFFF49800);
        }

        spans.add(TextSpan(text: coloredText, style: TextStyle(color: color)));
      } else {
        spans.add(TextSpan(text: text));
      }
    }
    return spans;
  }
}
