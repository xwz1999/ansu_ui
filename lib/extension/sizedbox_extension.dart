import 'package:ansu_ui/ansu_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension NumExt on num {
  ///获取宽 SizedBox
  Widget get wb => SizedBox(width: this.w);

  ///获取高 SizedBox
  Widget get hb => SizedBox(height: this.w);

  ///圆角
  BorderRadius get radius => BorderRadius.circular(this.w);
}
