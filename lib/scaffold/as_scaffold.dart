import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ansu_ui/styles/as_colors.dart';
import 'package:ansu_ui/buttons/as_back_button.dart';

///ASScaffold
///
///made with Scaffold from `Material`
///
///
///
///`title`,`body`,`leading`,`bottomNavigationBar`,`appBarBottom`,`appBar`
///
///title , AppBar 和 AppBarBottom 均为 `null`时不显示scaffold的AppBar
///
///只有AppBarBottom时只显示AppBarBottom中的内容
class ASScaffold extends StatelessWidget {
  ///标题，可为`String`或`Text`
  final dynamic title;

  /// `Scaffold` body
  final Widget body;

  /// `Scaffold` leading
  final Widget leading;

  /// `Scaffold` actions
  final List<Widget> actions;

  /// `Scaffold` bottomNavigationBar
  final Widget bottomNavigationBar;

  /// `AppBar` appBarBottom
  final PreferredSizeWidget appBarBottom;

  /// `EndDrawer` endDrawer
  ///
  /// 右方向的抽屉
  final Widget endDrawer;

  /// `AppBar` appBar
  final Widget appBar;

  ///背景色
  final Color backgroundColor;
  final Widget floatingActionButton;
  ASScaffold({
    Key key,
    this.title,
    this.leading,
    this.body,
    this.bottomNavigationBar,
    this.appBarBottom,
    this.endDrawer,
    this.appBar,
    this.backgroundColor = kBackgroundColor,
    this.actions,
    this.floatingActionButton,
  }) : super(key: key);

  Widget get _title {
    if (title is String) return Text(title);
    return title ?? SizedBox();
  }

  Widget get _appBar {
    if (title == null && appBar == null && appBarBottom == null) return null;
    return appBar ??
        AppBar(
          brightness: Brightness.light,
          backgroundColor: kForegroundColor,
          elevation: 0,
          leading: leading ?? ASBackButton(),
          actions: actions ?? [],
          centerTitle: true,
          title: DefaultTextStyle(
            style: TextStyle(
              color: kTextColor,
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
            child: _title,
          ),
          bottom: appBarBottom ??
              PreferredSize(
                child: SizedBox(),
                preferredSize: Size.fromHeight(0),
              ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      endDrawer: endDrawer,
      backgroundColor: backgroundColor,
      bottomNavigationBar: bottomNavigationBar,
      floatingActionButton: floatingActionButton,
      appBar: _appBar,
      body: body,
    );
  }
}
