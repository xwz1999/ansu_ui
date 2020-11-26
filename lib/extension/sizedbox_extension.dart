import 'package:ansu_ui/ansu_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension SizedBoxExt on num {
  ///获取宽 SizedBox
  Widget get wb => SizedBox(width: ScreenUtil().setWidth(this));

  ///获取高 SizedBox
  Widget get hb => SizedBox(height: ScreenUtil().setWidth(this));
}
