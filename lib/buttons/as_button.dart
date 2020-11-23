import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///安速按钮
class ASButton extends StatefulWidget {
  ///按钮颜色
  final Color color;

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
  final Color textColor;

  ///按钮文字格式
  final TextStyle textStyle;

  ///内边距
  final EdgeInsets padding;

  ///点击事件
  final VoidCallback onpressed;

  ASButton({
    Key key,
    this.color,
    this.radius,
    this.outline = false,
    this.outlineColor,
    this.textColor,
    this.textStyle,
    this.padding,
    @required this.title,
    @required this.onpressed,
  }) : super(key: key);

  ASButton.warn(this.title, this.onpressed,
      {Key key, this.textStyle, this.padding, this.radius, this.color})
      : outline = true,
        outlineColor = Color(0xFFE50112),
        textColor = Color(0xFFE50112),
        super(key: key);

  ASButton.info(this.title, this.onpressed,
      {Key key, this.color, this.radius, this.textStyle, this.padding})
      : outline = true,
        outlineColor = Color(0x73000000),
        textColor = Color(0xD9000000),
        super(key: key);

  ASButton.delete(this.title, this.onpressed,
      {Key key, this.radius, this.outlineColor, this.textStyle, this.padding})
      : color = Color(0xFFFFB600),
        textColor = Color(0xD9FFFFFF),
        outline = false,
        super(key: key);

  @override
  _ASButtonState createState() => _ASButtonState();
}

class _ASButtonState extends State<ASButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: widget.onpressed,
      child: widget.title is String
          ? Text(
              widget.title,
              style: widget.textStyle == null
                  ? TextStyle(color: widget.textColor, fontSize: 13.sp)
                  : widget.textStyle,
            )
          : widget.title,
      padding: widget.padding ??
          EdgeInsets.symmetric(vertical: 6.w, horizontal: 12.w),
      shape: RoundedRectangleBorder(
          side: widget.outline
              ? BorderSide(color: widget.outlineColor, width: 0.5)
              : BorderSide.none,
          borderRadius: BorderRadius.circular(widget.radius ?? 15.5.w)),
      color: widget.color ?? Color(0xFFFFFFFF),
      elevation: 0,
    );
  }
}
