import 'package:ansu_ui/styles/as_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ASGradientButton extends StatefulWidget {
  ///按钮文字
  ///动态类型，可以是string或者widget
  final dynamic title;

  ///按钮文字颜色
  ///若已定义文字风格则此属性不生效
  final Color textColor;

  ///圆角
  final double radius;

  ///按钮文字风格
  final TextStyle textStyle;

  ///内边距
  final EdgeInsetsGeometry padding;

  ///点击事件
  final VoidCallback onPressed;

  ///渐变颜色
  final List<Color> colors;

  ///开始位置
  final AlignmentGeometry begin;

  ///结束位置
  final AlignmentGeometry end;

  ///宽度
  final double width;

  ///不可点击颜色
  final Color disableColor;

  ///不可点击文字颜色
  final Color disableTextColor;
  ASGradientButton(
      {Key key,
      @required this.title,
      this.textColor,
      this.radius,
      this.textStyle,
      this.padding,
      this.onPressed,
      this.colors,
      this.width,
      this.begin,
      this.end,
      this.disableColor,
      this.disableTextColor})
      : super(key: key);
  ASGradientButton.pay({
    Key key,
    @required this.title,
    this.textStyle,
    this.onPressed,
    this.disableColor,
    this.disableTextColor,
  })  : textColor = kLightTextColor,
        radius = 19.w,
        colors = [Color(0xFFF89B14), Color(0xFFF86B14)],
        width = 100.w,
        begin = Alignment.topCenter,
        end = Alignment.bottomCenter,
        padding = EdgeInsets.symmetric(vertical: 8.w),
        super(key: key);

  ASGradientButton.operation(
      {Key key,
      @required this.title,
      this.textColor,
      this.onPressed,
      this.disableColor,
      this.width,
      this.radius,
      this.begin,
      this.end,
      this.padding,
      this.disableTextColor})
      : textStyle = TextStyle(
            color: Color(0xFFFFFFFF),
            fontSize: 14.sp,
            fontWeight: FontWeight.bold),
        colors = [Color(0xFFFFA700), Color(0xFFFFBD00)],
        super(key: key);

  @override
  _ASGradientButtonState createState() => _ASGradientButtonState();
}

class _ASGradientButtonState extends State<ASGradientButton> {
  bool get isNullFunc => widget.onPressed == null;
  List<Color> get colors {
    if (widget.colors == null)
      return null;
    else {
      return List.generate(
        widget.colors.length,
        (index) => widget.colors[index].withOpacity(isNullFunc ? 0.5 : 1),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? 110.w,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: widget.begin ?? Alignment.topCenter,
          end: widget.end ?? Alignment.bottomCenter,
          colors: colors ??
              [
                kDarkPrimaryColor.withOpacity(isNullFunc ? 0.5 : 1),
                kLightPrimaryColor.withOpacity(isNullFunc ? 0.5 : 1),
              ],
        ),
        borderRadius: BorderRadius.circular(widget.radius ?? 20.w),
      ),
      child: MaterialButton(
        disabledColor: widget.disableColor,
        textColor: widget.textColor ?? Color(0xD9FFFFFF),
        disabledTextColor: widget.disableTextColor,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        onPressed: widget.onPressed,
        child: widget.title is String
            ? Text(widget.title,
                style: widget.textStyle ?? TextStyle(fontSize: 18.sp))
            : widget.title,
        padding: widget.padding ?? EdgeInsets.symmetric(vertical: 10.w),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(widget.radius ?? 20.w)),
        elevation: 0,
      ),
    );
  }
}
