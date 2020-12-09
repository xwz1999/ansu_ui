import 'package:ansu_ui/ansu_ui.dart';
import 'package:ansu_ui/styles/as_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///菜单按钮Tile
class ASOptionTile extends StatelessWidget {
  ///应使用 ASOptionTileItem
  final List<Widget> items;

  ///单个Widget
  final Widget item;

  ///内边距
  final EdgeInsetsGeometry padding;

  ///标题
  final dynamic leading;

  ///item 推荐使用`ASOptionTileItem`,`ASVerticalTileItem`,`ASListTile`
  ASOptionTile({Key key, this.items, this.item, this.padding, this.leading})
      : super(key: key);

  ///单个子组件的Tile
  ASOptionTile.single(
      {Key key, @required this.item, this.padding, this.leading})
      : items = [],
        super(key: key);
  int get length => items.length;

  @override
  Widget build(BuildContext context) {
    if (this.leading != null) {
      this.items.insert(
        0,
        Container(
          padding: EdgeInsets.fromLTRB(10.w, 10.w, 10.w, 10.w),
          alignment: Alignment.centerLeft,
          child: this.leading is String
              ? Text(
                  this.leading,
                  style: TextStyle(
                      color: kTextColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold),
                )
              : this.leading,
        ),
      );
    }
    return Material(
        color: kForegroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.w),
        ),
        child: Padding(
          padding: this.padding ?? EdgeInsets.zero,
          child: item ??
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(length * 2 - 1, (index) {
                  final displayIndex = index ~/ 2;
                  if (index.isEven)
                    return items[displayIndex];
                  else
                    return this.padding == null
                        ? ASDivider(indent: 10.w, endIndent: 10.w)
                        : ASDivider();
                }),
              ),
        ));
  }
}
