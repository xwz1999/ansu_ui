import 'package:ansu_ui/ansu_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension SizedBoxExt on num {
  Widget get wb => SizedBox(width: ScreenUtil().setWidth(this));

  Widget get hb => SizedBox(height: ScreenUtil().setWidth(this));
}
