import 'package:flutter/material.dart';

extension WidgetExt on Widget {
  Widget paddingExt(double horizontal, [double vertical = 0]) => Padding(
        padding: EdgeInsets.symmetric(
          horizontal: horizontal,
          vertical: vertical,
        ),
        child: this,
      );
}
