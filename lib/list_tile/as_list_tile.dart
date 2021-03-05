import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ansu_ui/styles/as_colors.dart';

class ASListTile extends StatelessWidget {
  ///主标题
  final String title;

  ///动态类型，可传入widget
  final dynamic text;

  ///内容
  final Widget trail;

  ///高度，默认32px
  final double height;

  ///对齐方式
  final CrossAxisAlignment crossAxisAlignment;
  ASListTile({
    Key key,
    this.title,
    this.text,
    this.trail,
    this.height,
    this.crossAxisAlignment,
  }) : super(key: key);
  ASListTile.option({
    Key key,
    this.title,
    this.text,
    this.trail,
  })  : height = 32.w,
        crossAxisAlignment = CrossAxisAlignment.center,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: height == null
          ? EdgeInsets.symmetric(vertical: 8.w, horizontal: 10.w)
          : EdgeInsets.symmetric(horizontal: 10.w),
      height: height,
      alignment: Alignment.centerLeft,
      child: Row(
        crossAxisAlignment:
            crossAxisAlignment ?? CrossAxisAlignment.start,
        children: [
          Container(
            width: 85.w,
            child: Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.visible,
              softWrap: false,
              style: TextStyle(color: kTextColor, fontSize: 14.sp),
            ),
          ),
          Expanded(
            child: text == null
                ? Text('')
                : text is String
                    ? Text(
                        text,
                        maxLines: 2,
                        style: TextStyle(color: kTextSubColor, fontSize: 14.sp),
                      )
                    : text,
          ),
          trail ?? SizedBox()
        ],
      ),
    );
  }
}
