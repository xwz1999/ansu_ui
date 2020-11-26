import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///安速水平分割线
class ASDivider extends StatelessWidget {
  final Color color;
  final double height;
  final double indent;
  final double endIndent;
  ASDivider({Key key, this.indent, this.endIndent})
      : color = const Color(0xFFE9E9E9),
        height = 1.w,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: color,
      height: height,
      thickness: height,
      indent: indent,
      endIndent: endIndent,
    );
  }
}

///安速 垂直分割线
class ASVDivider extends StatelessWidget {
  final Color color;
  final double height;
  final double indent;
  final double endIndent;
  ASVDivider({Key key, this.indent, this.endIndent})
      : color = const Color(0xFFE9E9E9),
        height = 1.w,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: color,
      height: height,
      thickness: height,
      indent: indent,
      endIndent: endIndent,
    );
  }
}
