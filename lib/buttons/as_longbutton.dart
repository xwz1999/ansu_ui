import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ASLongButton extends StatefulWidget {
  ///按钮文字
  ///动态类型，可以是string或者widget
  final dynamic title;

  ///按钮背景颜色
  final Color bgColor;

  ///按钮文字颜色
  ///若已定义文字风格则此属性不生效
  final Color textColor;

  ///圆角
  final double radius;

  ///按钮文字风格
  final TextStyle textStyle;

  ///内边距
  final Padding padding;

  ///是否有边框
  final bool outline;

  ///边框颜色
  final Color outlineColor;

  ///点击事件
  final VoidCallback onpressed;

  ASLongButton(
      {Key key,
      @required this.title,
      this.bgColor,
      this.textColor,
      this.radius,
      this.textStyle,
      this.padding,
      this.outline = false,
      this.outlineColor,
      @required this.onpressed})
      : super(key: key);

  ASLongButton.solid(
    this.title,
    this.onpressed, {
    Key key,
    this.textStyle,
    this.padding,
    this.outlineColor,
    this.radius,
  })  : bgColor = Color(0xFFF6B72D),
        textColor = Color(0xFFFFFFFF),
        outline = false,
        super(key: key);
  ASLongButton.hollow(this.title, this.onpressed,
      {Key key, this.radius, this.textStyle, this.padding})
      : bgColor = Color(0xFFFFFFFF),
        textColor = Color(0xFFF6B72D),
        outline = true,
        outlineColor = Color(0xFFF6B72D),
        super(key: key);
  @override
  _ASLongButtonState createState() => _ASLongButtonState();
}

class _ASLongButtonState extends State<ASLongButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      onPressed: widget.onpressed,
      child: widget.title is String
          ? Text(widget.title,
              style: widget.textStyle ??
                  TextStyle(
                      color: widget.textColor ?? Color(0xFFFFFFFF),
                      fontSize: 20.sp))
          : widget.title,
      padding: widget.padding ??
          EdgeInsets.symmetric(vertical: 8.w, horizontal: 112.w),
      shape: RoundedRectangleBorder(
          side: widget.outline
              ? BorderSide(color: widget.outlineColor, width: 1.w)
              : BorderSide.none,
          borderRadius: BorderRadius.circular(widget.radius ?? 22.5.w)),
      color: widget.bgColor ?? Color(0xFFFFFFFF),
      elevation: 0,
    );
  }
}
