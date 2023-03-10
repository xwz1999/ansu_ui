import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ansu_ui/styles/as_colors.dart';
import 'package:ansu_ui/divider/as_divider.dart';
import 'package:ansu_ui/extension/num_extension.dart';

class ASVerticalTileItem extends StatelessWidget {
  ///标题
  final Widget title;

  ///child
  final Widget? child;

  final EdgeInsets? padding;
  ASVerticalTileItem({
    Key? key,
    required this.title,
    this.child,
    this.padding,
  }) : super(key: key);

  EdgeInsets get _widgetPadding =>
      padding ??
      EdgeInsets.symmetric(
        horizontal: 10.w,
        vertical: 12.w,
      );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _widgetPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          DefaultTextStyle(
            style: TextStyle(
              color: kTextSubColor,
              fontSize: 14.sp,
            ),
            child: title,
          ),
          13.hb,
          ASDivider(),
          child!,
        ],
      ),
    );
  }
}
