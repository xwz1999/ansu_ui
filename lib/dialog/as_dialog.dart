import 'package:ansu_ui/styles/as_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ASDialog extends StatefulWidget {
  ASDialog({Key key}) : super(key: key);

  @override
  _ASDialogState createState() => _ASDialogState();
}

class _ASDialogState extends State<ASDialog> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 28.w),
        child: Material(
          color: kForegroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.w),
          ),
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 100,
                  ),
                ],
              ),
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
            ],
          ),
        ),
      ),
    );
  }
}
