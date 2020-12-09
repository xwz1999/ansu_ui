import 'package:ansu_ui/styles/as_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ASListTile extends StatefulWidget {
  ///主标题
  final String title;

  ///动态类型，可传入widget
  final dynamic text;

  ///内容
  final Widget trail;

  ///宽度，默认332px
  final double width;

  ///对齐方式
  final CrossAxisAlignment crossAxisAlignment;
  ASListTile({
    Key key,
    this.title,
    this.text,
    this.trail,
    this.width,
    this.crossAxisAlignment,
  }) : super(key: key);

  @override
  _ASListTileState createState() => _ASListTileState();
}

class _ASListTileState extends State<ASListTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.w,horizontal: 10.w),
      alignment: Alignment.centerLeft,
      child: Row(
        crossAxisAlignment:
            widget.crossAxisAlignment ?? CrossAxisAlignment.start,
        children: [
          Container(
            width: 85.w,
            child: Text(
              widget.title,
              maxLines: 1,
              overflow: TextOverflow.visible,
              softWrap: false,
              style: TextStyle(color: kTextColor, fontSize: 14.sp),
            ),
          ),
          Expanded(
            child: widget.text is String
                ? Text(
                    widget.text,
                    maxLines: 2,
                    style: TextStyle(color: kTextSubColor, fontSize: 14.sp),
                  )
                : widget.text,
          ),
          SizedBox(width: 20.w,height: 20.w,child: widget.trail ,)
        ],
      ),
    );
  }
}
