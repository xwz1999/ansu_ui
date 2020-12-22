import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension NumExt on num {
  ///获取宽 SizedBox
  Widget get wb => SizedBox(width: this.w);

  ///获取高 SizedBox
  Widget get hb => SizedBox(height: this.w);

  ///获取 EdgeInsets.all
  EdgeInsets get edge => EdgeInsets.all(this.w);

  ///圆角
  BorderRadius get radius => BorderRadius.circular(this.w);

  ///每三位数加逗号
  String comma({int fixed = 2}) {
    bool notUseFixedFlag = fixed == -1;
    String _num =
        notUseFixedFlag ? this.toString() : this.toStringAsFixed(fixed);
    String str = '';
    int count = 0;
    if (_num.indexOf('.') == -1) {
      for (var i = _num.length - 1; i >= 0; i--) {
        if (count % 3 == 0 && count != 0) {
          str = _num.substring(i, i + 1) + ',' + str;
        } else {
          str = _num.substring(i, i + 1) + str;
        }
        count++;
      }
      return str;
    } else {
      for (var i = _num.indexOf('.') - 1; i >= 0; i--) {
        if (count % 3 == 0 && count != 0) {
          str = _num.substring(i, i + 1) + ',' + str;
        } else {
          str = _num.substring(i, i + 1) + str;
        }
        count++;
      }
      str = str + (_num.substring(_num.indexOf('.'), _num.length));
      return str;
    }
  }
}
