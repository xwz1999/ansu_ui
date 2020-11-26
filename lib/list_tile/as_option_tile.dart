import 'package:ansu_ui/ansu_ui.dart';
import 'package:ansu_ui/styles/as_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ansu_ui/extension/sizedbox_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///菜单按钮Tile
class ASOptionTile extends StatelessWidget {

  ///应使用 ASOptionTileItem
  final List<Widget> items;
  const ASOptionTile({Key key, @required this.items}) : super(key: key);

  int get length => items.length;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: kForegroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.w),
      ),
      child: Column(
        children: List.generate(length * 2 - 1, (index) {
          final displayIndex = index ~/ 2;
          if (index.isEven)
            return items[displayIndex];
          else
            return ASDivider();
        }),
      ),
    );
  }
}

class ASOptionTileItem extends StatelessWidget {
  final Widget leading;
  final Widget title;
  final onPressed;
  const ASOptionTileItem({
    Key key,
    this.leading,
    this.title,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(5.w),
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: 46.w),
        child: Row(
          children: [
            14.wb,
            leading ?? SizedBox(),
            leading != null ? 8.wb : 0.wb,
            Expanded(
              child: DefaultTextStyle(
                style: TextStyle(
                  color: Colors.black.withOpacity(0.65),
                  fontSize: 14.sp,
                ),
                child: title,
              ),
            ),
            14.wb,
            Icon(
              CupertinoIcons.chevron_forward,
              size: 16.w,
            ),
            14.wb,
          ],
        ),
      ),
    );
  }
}
