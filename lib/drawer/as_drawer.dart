import 'package:ansu_ui/utils/screen_adapter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///安速抽屉
class ASDrawer extends StatefulWidget {
  ///子组件
  final Widget child;
  ASDrawer({Key key, @required this.child}) : super(key: key);

  @override
  _ASDrawerState createState() => _ASDrawerState();
}

class _ASDrawerState extends State<ASDrawer> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: SizedBox(
        height: screenHeight - statusBarHeight,
        width: screenWidth - 44.w,
        child: Material(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(34.w),
            ),
          ),
          child: widget.child,
        ),
      ),
    );
  }
}
