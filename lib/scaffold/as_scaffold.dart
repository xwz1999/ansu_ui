import 'package:ansu_ui/theme/as_theme.dart';
import 'package:flutter/material.dart';
import 'package:ansu_ui/styles/as_colors.dart';
import 'package:ansu_ui/buttons/as_back_button.dart';
import 'package:flutter/services.dart';

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
  final Widget? body;

  /// `Scaffold` leading
  final Widget? leading;

  /// `Scaffold` actions
  final List<Widget>? actions;

  /// `Scaffold` bottomNavigationBar
  final Widget? bottomNavigationBar;

  /// `AppBar` appBarBottom
  final PreferredSizeWidget? appBarBottom;

  /// `EndDrawer` endDrawer
  ///
  /// 右方向的抽屉
  final Widget? endDrawer;

  /// `AppBar` appBar
  final Widget? appBar;

  final SystemUiOverlayStyle? systemStyle;

  ///背景色
  final Color backgroundColor;
  final Widget? floatingActionButton;
  ASScaffold({
    Key? key,
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
    this.systemStyle,
  }) : super(key: key);

  Widget get _title {
    if (title is String) return Text(title);
    return title;
  }

  Widget? get _appBar {
    if (title == null && appBar == null && appBarBottom == null) return null;
    return appBar ??
        AppBar(
          leading: leading ?? ASBackButton(),
          actions: actions ?? [],
          title: _title,
          bottom: appBarBottom ??
              PreferredSize(
                child: SizedBox(),
                preferredSize: Size.fromHeight(0),
              ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: systemStyle ?? ASTheme.defaultSystemStyle,
      child: Scaffold(
        key: key,
        endDrawer: endDrawer,
        backgroundColor: backgroundColor,
        bottomNavigationBar: bottomNavigationBar,
        floatingActionButton: floatingActionButton,
        appBar: _appBar as PreferredSizeWidget?,
        body: body,
      ),
    );
  }
}
