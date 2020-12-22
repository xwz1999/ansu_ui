import 'package:flutter/material.dart';

extension WidgetExt on Widget {
  Widget get expanded => Expanded(child: this);
  Widget get center => Center(child: this);
  Widget paddingExt(double horizontal, [double vertical]) => Padding(
        padding: EdgeInsets.symmetric(
          horizontal: horizontal,
          vertical: vertical,
        ),
        child: this,
      );
}
