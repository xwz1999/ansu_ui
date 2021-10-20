import 'package:ansu_ui/ansu_ui.dart';
import 'package:flutter/material.dart';

class MatchText extends StatelessWidget {
  final String matchText;
  final String text;
  final TextStyle? style;

  const MatchText({
    Key? key,
    required this.matchText,
    required this.text,
    this.style,
  }) : super(key: key);

  TextSpan matchSpan() {
    return TextSpan(children: getSpans());
  }

  List<TextSpan> getSpans() {
    var textStyle = style ?? TextStyle(color: kTextColor, fontSize: 14.sp);
    if (matchText.isEmpty) {
      return [TextSpan(text: text, style: textStyle)];
    }
    List<TextSpan> allSpan = text
        .replaceAllMapped(matchText, (Match mt) => '\r${mt[0]}\r')
        .split('\r')
        .map<TextSpan>(
          (e) => (matchText.matchAsPrefix(e) == null || e.length == text.length)
              ? TextSpan(text: e, style: textStyle)
              : TextSpan(text: e, style: textStyle.copyWith(color: Colors.red)),
        )
        .toList();
    return allSpan;
  }

  @override
  Widget build(BuildContext context) {
    return RichText(text: TextSpan(children: getSpans()));
  }
}
