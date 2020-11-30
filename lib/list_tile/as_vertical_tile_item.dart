import 'package:ansu_ui/ansu_ui.dart';
import 'package:ansu_ui/styles/as_colors.dart';
import 'package:flutter/material.dart';

class ASVerticalTileItem extends StatelessWidget {
  ///标题
  final String title;

  ///child
  final Widget child;

  final EdgeInsets padding;
  ASVerticalTileItem({
    Key key,
    @required this.title,
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
          Text(
            title,
            style: TextStyle(
              color: kTextSubColor,
              fontSize: 14.sp,
            ),
          ),
          13.hb,
          ASDivider(),
          child,
        ],
      ),
    );
  }
}
