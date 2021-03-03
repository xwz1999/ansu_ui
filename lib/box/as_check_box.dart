import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ASCheckBox extends StatelessWidget {
  final bool value;

  ///控制选中时的样式
  final bool checkStyle;

  ///选中时颜色
  final Color color;
  ASCheckBox({Key key, this.value = false, this.color})
      : checkStyle = false,
        super(key: key);

  ASCheckBox.checkStyle({Key key, this.value = false, this.color})
      : checkStyle = true,
        super(key: key);

  _renderDefault() {
    return Container(
      height: 17.w,
      width: 17.w,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFFD5D5D5),
          width: 1.w,
        ),
        borderRadius: BorderRadius.circular(17.w),
      ),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.fastOutSlowIn,
        height: value ? 13.w : 5.w,
        width: value ? 13.w : 5.w,
        decoration: BoxDecoration(
          color: (color ?? Color(0xFFF69A2D)).withOpacity(value ? 1 : 0),
          borderRadius: BorderRadius.circular(13.w),
        ),
      ),
    );
  }

  _renderCheck() {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      curve: Curves.fastOutSlowIn,
      height: 27.w,
      width: 27.w,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFFD5D5D5),
          width: value ? 0 : 1.w,
        ),
        borderRadius: BorderRadius.circular(27.w),
        color: (color ?? Color(0xFFFFBD32)).withOpacity(value ? 1 : 0),
      ),
      child: AnimatedOpacity(
        duration: Duration(milliseconds: 300),
        curve: Curves.fastOutSlowIn,
        opacity: value ? 1 : 0,
        child: FittedBox(
          child: Padding(
            padding: EdgeInsets.all(5.w),
            child: Icon(
              Icons.check,
              color: color != null ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return checkStyle ? _renderCheck() : _renderDefault();
  }
}
