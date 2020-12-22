import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ansu_ui/styles/as_colors.dart';


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
  final VoidCallback onPressed;

  ///宽度
  final double width;

  ///不可点击颜色
  final Color disableColor;

  ///不可点击文字颜色
  final Color disableTextColor;

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
      this.onPressed,
      this.width,
      this.disableColor,
      this.disableTextColor})
      : super(key: key);

  ASLongButton.solid({
    Key key,
    this.textStyle,
    this.padding,
    this.outlineColor,
    this.radius,
    @required this.title,
    this.onPressed,
    this.width,
    this.disableTextColor,
    this.bgColor = kPrimaryColor,
  })  : textColor = kLightTextColor,
        outline = false,
        disableColor = Color(0xFFC1BDB5),
        super(key: key);
  ASLongButton.hollow(
      {Key key,
      this.radius,
      this.textStyle,
      this.padding,
      this.onPressed,
      @required this.title,
      this.width,
      this.disableColor,
      this.disableTextColor})
      : bgColor = kForegroundColor,
        textColor = kDarkPrimaryColor,
        outline = true,
        outlineColor = kDarkPrimaryColor,
        super(key: key);
  @override
  _ASLongButtonState createState() => _ASLongButtonState();
}

class _ASLongButtonState extends State<ASLongButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: widget.width ?? 280.w,
      disabledColor: widget.disableColor,
      textColor: widget.textColor ?? kLightTextColor,
      disabledTextColor: widget.disableTextColor,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      onPressed: widget.onPressed,
      child: widget.title is String
          ? Text(widget.title,
              style: widget.textStyle ?? TextStyle(fontSize: 20.sp))
          : widget.title,
      padding: widget.padding ?? EdgeInsets.symmetric(vertical: 8.w),
      shape: RoundedRectangleBorder(
          side: widget.outline
              ? BorderSide(color: widget.outlineColor, width: 1.w)
              : BorderSide.none,
          borderRadius: BorderRadius.circular(widget.radius ?? 22.5.w)),
      color: widget.bgColor ?? kForegroundColor,
      elevation: 0,
      highlightElevation: 0,
      splashColor: ColorTool.getSplashColor(widget.bgColor),
    );
  }
}
