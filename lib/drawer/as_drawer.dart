import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ansu_ui/utils/screen_adapter.dart';

///安速抽屉
class ASDrawer extends StatefulWidget {
  ///子组件List Children
  ///
  ///内部为ListView实现
  final List<Widget> children;

  ///Padding
  ///
  ///默认Padding `EdgeInsets.fromLTRB(26.w, 24.w, 26.w, 90.w)`
  final EdgeInsets padding;

  ///底部操作空间
  ///
  ///默认
  ///```dart
  ///bottom: 45.w,
  ///left: 26.w,
  ///right: 26.w,
  ///```
  final Widget bottom;

  ///子组件
  ///
  ///使用该选项，`bottom`、`padding`、`children`将失效
  final Widget child;

  ///默认抽屉
  ///
  ///默认Padding `EdgeInsets.fromLTRB(26.w, 24.w, 26.w, 90.w)`
  ASDrawer({
    Key key,
    this.children,
    this.bottom,
    this.child,
  })  : this.padding = EdgeInsets.fromLTRB(26.w, 24.w, 26.w, 90.w),
        assert(child != null || children != null,
            'child or children cant be null'),
        super(key: key);

  ///自定义Padding
  ASDrawer.padding({
    Key key,
    this.padding = EdgeInsets.zero,
    this.children,
    this.child,
    this.bottom,
  })  : assert(child != null || children != null,
            'child or children cant be null'),
        super(key: key);

  @override
  _ASDrawerState createState() => _ASDrawerState();
}

class _ASDrawerState extends State<ASDrawer> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: ClipRRect(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(34.w)),
        child: SizedBox(
          height: screenHeight - statusBarHeight,
          width: screenWidth - 44.w,
          child: Material(
            child: widget.child ??
                Stack(
                  children: [
                    ListView(
                      padding: widget.padding,
                      children: widget.children,
                    ),
                    Positioned(
                      child: widget.bottom ?? SizedBox(),
                      bottom: 45.w,
                      left: 26.w,
                      right: 26.w,
                    ),
                  ],
                ),
          ),
        ),
      ),
    );
  }
}
