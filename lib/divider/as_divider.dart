import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
