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

  ///item 推荐使用`ASOptionTileItem`,`ASVerticalTileItem`,`ASListTile`
  ASOptionTile({Key key, this.items, this.item, this.padding})
      : super(key: key);

  ///单个子组件的Tile
  ASOptionTile.single({Key key, @required this.item, this.padding})
      : items = [],
        super(key: key);

  int get length => items.length;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: kForegroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.w),
        ),
        child: Padding(
          padding: this.padding ?? EdgeInsets.zero,
          child: item ??
              Column(
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
