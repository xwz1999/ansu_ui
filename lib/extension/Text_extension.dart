import 'package:ansu_ui/utils/match_text.dart';
import 'package:flutter/material.dart';

extension TextSpanExt on TextSpan {
  TextSpan match(String match) {
    return MatchText(matchText: match, text: this.text ?? '', style: this.style)
        .matchSpan();
  }
}
