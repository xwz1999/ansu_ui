import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ansu_ui/styles/as_colors.dart';
import 'package:ansu_ui/extension/num_extension.dart';

class ASTag extends StatelessWidget {
  ///宽度
  final double? width;

  ///高度
  final double? height;

  ///背景色
  final Color? bgColor;

  ///标签内容
  final String? text;

  ///标签文字颜色
  final Color? textColor;

  ///标签文字风格
  final TextStyle? textStyle;

  ///是否有边框
  final bool outline;

  ///边框颜色
  final Color? outlineColor;

  ///圆角
  final double? radius;

  ///内边距
  final EdgeInsetsGeometry? padding;
  ASTag(
      {Key? key,
      this.width,
      this.height,
      this.bgColor,
      this.text,
      this.textColor,
      this.textStyle,
      this.outline = false,
      this.outlineColor,
      this.radius,
      this.padding})
      : super(key: key);

  ASTag.yellowSolid(this.text,
      {Key? key,
      this.width,
      this.height,
      this.textStyle,
      this.outlineColor,
      this.radius,
      this.padding})
      : bgColor = kDarkPrimaryColor,
        textColor = kLightTextColor,
        outline = false,
        super(key: key);

  ASTag.redHollow(
    this.text, {
    Key? key,
    this.width,
    this.height,
    this.textStyle,
    this.radius,
    this.padding,
  })  : bgColor = kForegroundColor,
        textColor = kSecondaryColor,
        outline = true,
        outlineColor = kSecondaryColor,
        super(key: key);

  ASTag.yellowHollow(this.text,
      {Key? key,
      this.width,
      this.height,
      this.textStyle,
      this.radius,
      this.padding})
      : bgColor = kForegroundColor,
        textColor = kPrimaryColor,
        outline = true,
        outlineColor = kPrimaryColor,
        super(key: key);

  ASTag.yellowHollowS(this.text,
      {Key? key,
      this.width,
      this.height,
      this.textStyle,
      this.radius,
      this.padding})
      : bgColor = kForegroundColor,
        textColor = kDarkPrimaryColor,
        outline = true,
        outlineColor = kDarkPrimaryColor,
        super(key: key);
  ASTag.transport(this.text, {Key? key, this.textStyle, this.padding})
      : bgColor = kForegroundColor,
        textColor = Color(0xFF00B0FF),
        outline = true,
        outlineColor = Color(0xFF00B0FF),
        radius = 3.w,
        width = 38.w,
        height = 19.w,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ??
          EdgeInsets.symmetric(
            horizontal: 6.w,
            vertical: 2.w,
          ),
      width: width,
      height: height ?? 19.w,
      decoration: BoxDecoration(
        color: bgColor ?? kDarkPrimaryColor,
        border: outline
            ? Border.all(
                width: 1.w,
                color: outlineColor ?? kSecondaryColor,
              )
            : Border.fromBorderSide(BorderSide.none),
        borderRadius: (radius ?? 9.w).radius,
      ),
      alignment: Alignment.center,
      child: Text(
        text!,
        style: textStyle ??
            TextStyle(
              color: textColor,
              fontSize: 10.sp,
            ),
      ),
    );
  }
}
