import 'package:ansu_ui/styles/as_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///安速按钮
class ASButton extends StatefulWidget {
  ///按钮颜色
  final Color bgcolor;

  ///按钮文字
  ///动态类型，可以是string或者widget
  final dynamic title;

  ///按钮圆角
  final double radius;

  ///按钮边框
  final bool outline;

  ///按钮边框颜色
  final Color outlineColor;

  ///按钮文字颜色
  ///若已定义文字风格则此属性不生效
  final Color textColor;

  ///按钮文字格式
  final TextStyle textStyle;

  ///内边距
  final EdgeInsets padding;

  ///点击事件
  final VoidCallback onPressed;

  ///宽度
  final double width;

  ///不可点击颜色
  final Color disableColor;

  ///不可点击时文字颜色
  final Color disableTextColor;

  final Color splashColor;
  ASButton({
    Key key,
    this.bgcolor,
    this.radius,
    this.outline = false,
    this.outlineColor,
    this.textColor,
    this.textStyle,
    this.padding,
    @required this.title,
    this.onPressed,
    this.width,
    this.disableColor,
    this.disableTextColor,
    this.splashColor,
  }) : super(key: key);

  ASButton.danger({
    Key key,
    this.textStyle,
    this.padding,
    this.radius,
    this.bgcolor,
    this.onPressed,
    @required this.title,
    this.width,
    this.disableColor,
    this.disableTextColor,
  })  : outline = true,
        outlineColor = kDangerColor,
        textColor = kDangerColor,
        splashColor = kDangerColor.withOpacity(0.2),
        super(key: key);

  ASButton.info(
      {Key key,
      this.bgcolor,
      this.radius,
      this.textStyle,
      this.padding,
      @required this.title,
      this.onPressed,
      this.width,
      this.disableColor,
      this.disableTextColor,
      this.splashColor})
      : outline = true,
        outlineColor = kDarkColor,
        textColor = kTextColor,
        super(key: key);

  ASButton.warn(
      {Key key,
      this.radius,
      this.outlineColor,
      this.textStyle,
      this.padding,
      @required this.title,
      this.onPressed,
      this.width,
      this.disableColor,
      this.disableTextColor,
      this.splashColor})
      : bgcolor = kLightPrimaryColor,
        textColor = kLightTextColor,
        outline = false,
        super(key: key);
  ASButton.operation(
      {Key key,
      this.radius,
      this.outlineColor,
      this.textStyle,
      this.padding,
      @required this.title,
      this.onPressed,
      this.width,
      this.disableColor,
      this.disableTextColor,
      this.splashColor})
      : bgcolor = kForegroundColor,
        textColor =kTextColor,
        outline = false,
        super(key: key);
  ASButton.order({
    Key key,
    @required this.title,
    this.onPressed,
    this.outlineColor,
    this.width,
    this.splashColor,
  })  : bgcolor = kLightPrimaryColor,
        textColor = kTextColor,
        textStyle = TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
        radius = 5.w,
        outline = false,
        disableColor = Color(0xFFFFDF9B),
        disableTextColor = kTextSubColor,
        padding = EdgeInsets.symmetric(vertical: 8.w),
        super(key: key);

  @override
  _ASButtonState createState() => _ASButtonState();
}

class _ASButtonState extends State<ASButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      disabledColor: widget.disableColor,
      disabledTextColor: widget.disableTextColor,
      textColor: widget.textColor ?? kLightPrimaryColor,
      minWidth: widget.width ?? 75.w,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      onPressed: widget.onPressed,
      child: widget.title is String
          ? Text(widget.title,
              style: widget.textStyle ?? TextStyle(fontSize: 13.sp))
          : widget.title,
      padding: widget.padding ?? EdgeInsets.symmetric(vertical: 6.w),
      shape: RoundedRectangleBorder(
          side: widget.outline
              ? BorderSide(color: widget.outlineColor, width: 0.5.w)
              : BorderSide.none,
          borderRadius: BorderRadius.circular(widget.radius ?? 15.5.w)),
      color: widget.bgcolor ?? kForegroundColor,
      splashColor: widget.splashColor,
      highlightColor: widget.splashColor,
      elevation: 0,
      focusElevation: 0,
      highlightElevation: 0,
      hoverElevation: 0,
    );
  }
}
