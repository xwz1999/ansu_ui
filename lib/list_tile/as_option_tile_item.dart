import 'package:ansu_ui/extension/num_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ASOptionTileItem extends StatelessWidget {
  final Widget? leading;
  final Widget? title;
  final VoidCallback? onPressed;
  const ASOptionTileItem({
    Key? key,
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
                child: title!,
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
