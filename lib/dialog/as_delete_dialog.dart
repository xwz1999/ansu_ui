import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ansu_ui/styles/as_colors.dart';
import 'package:ansu_ui/extension/num_extension.dart';
import 'package:ansu_ui/dialog/as_dialog_button.dart';

class ASDeleteDialog extends StatelessWidget {
  ///标题
  final String title;

  /// 内容,字符串或widget
  final dynamic boyd;

  ///删除按钮
  final Widget button;

  ///点击回调
  final VoidCallback onpressed;

  const ASDeleteDialog(
      {Key key, this.title, this.boyd, this.button, this.onpressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(24.w),
        child: Material(
          color: kForegroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.w),
          ),
          child: Stack(
            children: [
              Positioned(
                right: 0,
                top: 0,
                child: IconButton(
                  iconSize: 20.w,
                  icon: Icon(
                    CupertinoIcons.clear_circled,
                    color: Color(0xFF060606).withOpacity(0.85),
                  ),
                  onPressed: () => Navigator.pop(context),
                  splashRadius: 16.w,
                ),
              ),
              20.hb,
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(24.w, 45.w, 24.w, 20.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        this.title == null
                            ? SizedBox()
                            : Container(
                                margin: EdgeInsets.only(bottom: 15.w),
                                child: Text(
                                  this.title,
                                  style: TextStyle(
                                      color: kTextColor,
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                        this.boyd == null
                            ? SizedBox()
                            : this.boyd is String
                                ? Text(
                                    this.boyd,
                                    style: TextStyle(
                                        color: kTextSubColor, fontSize: 16.sp),
                                  )
                                : this.boyd,
                      ],
                    ),
                  ),
                  this.button ??
                      ASDialogButton.outline(
                        title: '确认删除',
                        onPressed: this.onpressed,
                      ),
                  20.hb,
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
