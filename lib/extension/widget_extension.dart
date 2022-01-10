import 'package:ansu_ui/utils/match_text.dart';
import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';

import 'Text_extension.dart';

extension WidgetExt on Widget {
  Widget paddingExt(double horizontal, [double vertical = 0]) =>
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: horizontal,
          vertical: vertical,
        ),
        child: this,
      );

  Widget match(String match) {
    if (this.runtimeType == Text) {
      // var spans = (this as Text).textSpan;
      // if (spans != null) {
      //   spans = spans.match(match);
      //   return Text.rich(spans);
      // }
      return MatchText(
        matchText: match,
        text: (this as Text).data ?? '',
        style: (this as Text).style,
      );
    }

    if (this.runtimeType == AutoSizeText) {
      var spans = (this as AutoSizeText).textSpan;
      if (spans != null) {
        spans = spans.match(match);
        return AutoSizeText.rich(spans);
      }
      return MatchText(
        matchText: match,
        text: (this as AutoSizeText).data ?? '',
        style: (this as AutoSizeText).style,
      );
    }
    return this;
  }
}
