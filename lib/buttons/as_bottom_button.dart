import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ansu_ui/styles/as_colors.dart';

class ASBottomButton extends StatelessWidget {
  ///动态组件，可以是字符或组件
  final dynamic title;

  ///颜色
  final Color? bgcolor;

  ///文字颜色
  final Color? textColor;

  ///文字风格
  final TextStyle? textStyle;

  ///内边距
  final EdgeInsetsGeometry? padding;

  ///不可点击时颜色
  final Color? disableColor;

  ///不可点击时文字颜色
  final Color? disableTextColor;

  ///宽度
  final double? width;

  ///渐变起始位置
  final AlignmentGeometry? begin;

  ///渐变结束位置
  final AlignmentGeometry? end;

  ///渐变颜色
  final List<Color>? colors;

  ///点击事件
  final VoidCallback? onPressed;

  ASBottomButton(
      {Key? key,
      this.title,
      this.bgcolor,
      this.textColor,
      this.textStyle,
      this.padding,
      this.disableColor,
      this.disableTextColor,
      this.width,
      this.begin,
      this.end,
      this.colors,
      this.onPressed})
      : super(key: key);

  ASBottomButton.infinity({
    Key? key,
    required this.title,
    this.onPressed,
    this.textStyle,
    this.padding,
    this.disableColor,
    this.disableTextColor,
    this.begin,
    this.end,
    this.colors,
  })  : bgcolor = Color(0xFFF6B72D),
        textColor = Color(0xFFFFFFFF),
        width = double.infinity,
        super(key: key);

  ASBottomButton.gradient(
      {Key? key,
      required this.title,
      this.onPressed,
      this.bgcolor,
      this.textStyle,
      this.padding,
      this.disableColor,
      this.disableTextColor,
      this.begin,
      this.end})
      : colors = [Color(0xFFFFA700), Color(0xFFFFBD00)],
        textColor = kLightTextColor,
        width = double.infinity,
        super(key: key);
  ASBottomButton.shortWhite({
    Key? key,
    required this.title,
    this.onPressed,
    this.bgcolor,
    this.textStyle,
    this.padding,
    this.disableColor,
    this.disableTextColor,
    this.begin,
    this.end,
  })  : colors = [Color(0xFFFBFBFB), Color(0xFFFFFFFF)],
        textColor = kPrimaryColor,
        width = double.infinity,
        super(key: key);
  Widget? get _title {
    if (title is String)
      return Text(
        title,
        style: textStyle ??
            TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),
      );
    return title;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
      width: width ?? double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: begin ?? Alignment.bottomRight,
          end: end ?? Alignment.topLeft,
          colors: colors ?? [bgcolor!, bgcolor!],
        ),
      ),
      child: MaterialButton(
        onPressed: onPressed,
        textColor: textColor ?? kLightTextColor,
        disabledColor: disableColor,
        disabledTextColor: disableTextColor,
        padding: padding ?? EdgeInsets.symmetric(vertical: 13.w),
        elevation: 0,
        hoverElevation: 0,
        highlightElevation: 0,
        focusElevation: 0,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        child: _title,
      ),
    );
  }
}
