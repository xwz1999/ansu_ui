import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ansu_ui/styles/as_colors.dart';
import 'package:ansu_ui/extension/num_extension.dart';

class ASEditTile extends StatelessWidget {
  final Widget title;
  final FocusNode node;
  final String hintText;
  final TextEditingController controller;
  ASEditTile({
    Key key,
    this.title,
    this.node,
    this.hintText,
    this.controller,
  }) : super(key: key);

  FocusNode _node;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (node != null) {
          node?.requestFocus();
        } else {
          _node?.requestFocus();
        }
      },
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: 46.w),
        child: Row(
          children: [
            10.wb,
            InkWell(
              child: DefaultTextStyle(
                style: TextStyle(
                  color: Colors.black.withOpacity(0.65),
                  fontSize: 14.sp,
                ),
                child: title ?? Text(''),
              ),
            ),
            Expanded(
              child: TextField(
                focusNode: node ?? _node,
                controller: controller,
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: kTextColor,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  isDense: true,
                  contentPadding: EdgeInsets.zero,
                  hintText: hintText,
                  hintStyle: TextStyle(
                    color: kTextSubColor,
                    fontSize: 14.sp,
                  ),
                ),
              ),
            ),
            10.wb,
          ],
        ),
      ),
    );
  }
}
