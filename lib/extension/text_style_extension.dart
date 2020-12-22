import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ansu_ui/styles/as_colors.dart';


extension TextStyleExtension on TextStyle {
  ///Bold text
  TextStyle get bold => this.copyWith(fontWeight: FontWeight.bold);

  ///size
  TextStyle size(double size) => this.copyWith(fontSize: size.sp);

  ///color
  TextStyle colorX(Color color) => this.copyWith(color: color);
  //specific values

  TextStyle get white => this.copyWith(color: kLightTextColor);

  TextStyle get black => this.copyWith(color: kTextColor);

  TextStyle get black65 => this.copyWith(color: kTextSubColor);

  ///FontWeight:w300
  TextStyle get light => this.copyWith(fontWeight: FontWeight.w300);
}
