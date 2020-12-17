import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension TextStyleExtension on TextStyle {
  TextStyle get bold => this.copyWith(fontWeight: FontWeight.bold);
  TextStyle size(double size) => this.copyWith(fontSize: size.w);
  TextStyle color(Color color) => this.copyWith(color: color);
}
