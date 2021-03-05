import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ansu_ui/utils/screen_adapter.dart';
import 'package:get/get.dart';

///打开抽屉
///
///pass a value through navigator.
///
///example `Navigator.pop(context,true)` or `Get.back(result:true)`
Future<T> showASDrawer<T>(Widget drawer) async {
  return await Get.generalDialog(
    pageBuilder: (context, animation, secondAnimation) {
      return drawer;
    },
    transitionBuilder: (context, animation, secondaryAnimation, child) {
      return SlideTransition(
        position: Tween(
          end: Offset(0, 0),
          begin: Offset(1, 0),
        ).animate(
          CurvedAnimation(
            parent: animation,
            curve: Curves.easeInOutCubic,
          ),
        ),
        child: child,
      );
    },
    barrierDismissible: true,
    barrierLabel: 'filter',
  );
}

///安速抽屉
///
///使用`showASDrawer`打开抽屉，不推荐使用`Scaffold`的`drawer`和`endDrawer`打开抽屉。
class ASDrawer extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: ClipRRect(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(34.w)),
        child: SizedBox(
          height: screenHeight - statusBarHeight,
          width: screenWidth - 44.w,
          child: Material(
            child: child ??
                Stack(
                  children: [
                    ListView(
                      padding: padding,
                      children: children,
                    ),
                    Positioned(
                      child: bottom ?? SizedBox(),
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
