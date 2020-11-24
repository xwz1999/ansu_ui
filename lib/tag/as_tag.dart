import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ASTag extends StatefulWidget {
  ///宽度
  final double width;

  ///高度
  final double height;

  ///背景色
  final Color bgColor;

  ///标签内容
  final String text;

  ///标签文字颜色
  final Color textColor;

  ///标签文字风格
  final TextStyle textStyle;

  ///是否有边框
  final bool outline;

  ///边框颜色
  final Color outlineColor;

  ///圆角
  final double radius;
  ASTag(
      {Key key,
      this.width,
      this.height,
      this.bgColor,
      this.text,
      this.textColor,
      this.textStyle,
      this.outline = false,
      this.outlineColor,
      this.radius})
      : super(key: key);

  ASTag.dangerousItem(this.text,
      {Key key,
      this.width,
      this.height,
      this.textStyle,
      this.outlineColor,
      this.radius})
      : bgColor = Color(0xFFF69A2D),
        textColor = Color(0xFFFFFFFF),
        outline = false,
        super(key: key);

  @override
  _ASTagState createState() => _ASTagState();
}

class _ASTagState extends State<ASTag> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: widget.width ?? 36.w,
      height: widget.height ?? 18.w,
      decoration: BoxDecoration(
          color: widget.bgColor ?? Color(0xFFF69A2D),
          border: widget.outline
              ? Border.all(
                  color: widget.outlineColor ?? Color(0xFFE50112),
                )
              : Border.fromBorderSide(BorderSide.none),
          borderRadius: BorderRadius.circular(widget.radius ?? 9.w)),
      child: Text(
        widget.text,
        style: widget.textStyle ??
            TextStyle(
              color: widget.textColor,
              fontSize: 10.sp,
            ),
      ),
    );
  }
}
