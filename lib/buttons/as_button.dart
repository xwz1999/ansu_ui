import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ansu_ui/styles/as_colors.dart';

///安速按钮
class ASButton extends StatelessWidget {
  ///按钮颜色
  final Color? bgcolor;

  ///按钮文字
  ///动态类型，可以是string或者widget
  final dynamic title;

  ///按钮圆角
  final double? radius;

  ///按钮边框
  final bool outline;

  ///按钮边框颜色
  final Color? outlineColor;

  ///按钮文字颜色
  ///若已定义文字风格则此属性不生效
  final Color? textColor;

  ///按钮文字格式
  final TextStyle? textStyle;

  ///内边距
  final EdgeInsets? padding;

  ///点击事件
  final VoidCallback? onPressed;

  ///宽度
  final double? width;

  ///不可点击颜色
  final Color? disableColor;

  ///不可点击时文字颜色
  final Color? disableTextColor;

  final Color? splashColor;
  ASButton({
    Key? key,
    this.bgcolor,
    this.radius,
    this.outline = false,
    this.outlineColor,
    this.textColor,
    this.textStyle,
    this.padding,
    required this.title,
    this.onPressed,
    this.width,
    this.disableColor,
    this.disableTextColor,
    this.splashColor,
  }) : super(key: key);

  ASButton.danger({
    Key? key,
    this.textStyle,
    this.padding,
    this.radius,
    this.bgcolor,
    this.onPressed,
    required this.title,
    this.width,
    this.disableColor,
    this.disableTextColor,
  })  : outline = true,
        outlineColor = kDangerColor,
        textColor = kDangerColor,
        splashColor = kDangerColor.withOpacity(0.2),
        super(key: key);

  ASButton.info(
      {Key? key,
      this.bgcolor,
      this.radius,
      this.textStyle,
      this.padding,
      required this.title,
      this.onPressed,
      this.width,
      this.disableColor,
      this.disableTextColor,
      this.splashColor})
      : outline = true,
        outlineColor = kDarkColor,
        textColor = kTextColor,
        super(key: key);

  ASButton.warn({
    Key? key,
    this.radius,
    this.outlineColor,
    this.textStyle,
    this.padding,
    required this.title,
    this.onPressed,
    this.width,
    this.disableColor,
    this.disableTextColor,
  })  : bgcolor = kLightPrimaryColor,
        textColor = kLightTextColor,
        outline = false,
        this.splashColor = ColorTool.getSplashColor(kPrimaryColor),
        super(key: key);
  ASButton.operation(
      {Key? key,
      this.radius,
      this.outlineColor,
      this.textStyle,
      this.padding,
      required this.title,
      this.onPressed,
      this.width,
      this.disableColor,
      this.disableTextColor,
      this.splashColor})
      : bgcolor = Color(0xFFF2F2F2),
        textColor = kTextColor,
        outline = false,
        super(key: key);
  ASButton.order({
    Key? key,
    required this.title,
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
  Widget build(BuildContext context) {
    return MaterialButton(
      disabledColor: disableColor,
      disabledTextColor: disableTextColor,
      textColor: textColor ?? kLightPrimaryColor,
      minWidth: width,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      onPressed: onPressed,
      child: title is String
          ? Text(title, style: textStyle ?? TextStyle(fontSize: 13.sp))
          : title,
      padding: padding ?? EdgeInsets.symmetric(vertical: 6.w, horizontal: 12.w),
      shape: radius == null
          ? StadiumBorder(
              side: outline
                  ? BorderSide(color: outlineColor!, width: 0.5.w)
                  : BorderSide.none,
            )
          : RoundedRectangleBorder(
              side: outline
                  ? BorderSide(color: outlineColor!, width: 0.5.w)
                  : BorderSide.none,
              borderRadius: BorderRadius.circular(radius ?? 15.5.w)),
      color: bgcolor ?? kForegroundColor,
      splashColor: splashColor,
      highlightColor: splashColor?.withOpacity(0.3),
      elevation: 0,
      focusElevation: 0,
      highlightElevation: 0,
      hoverElevation: 0,
    );
  }
}
