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
class ASScaffold extends StatefulWidget {
  ///标题，可为`String`或`Text`
  final dynamic title;

  /// `Scaffold` body
  final Widget body;

  /// `Scaffold` leading
  final Widget leading;

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
  }) : super(key: key);

  @override
  _ASScaffoldState createState() => _ASScaffoldState();
}

class _ASScaffoldState extends State<ASScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: widget.endDrawer,
      backgroundColor: widget.backgroundColor,
      bottomNavigationBar: widget.bottomNavigationBar,
      appBar: widget.title == null &&
              widget.appBar == null &&
              widget.appBarBottom == null
          ? null
          : widget.appBar ??
              AppBar(
                brightness: Brightness.light,
                backgroundColor: kForegroundColor,
                elevation: 0,
                leading: widget.leading ?? ASBackButton(),
                centerTitle: true,
                title: DefaultTextStyle(
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  child: widget.title is String
                      ? Text(widget.title)
                      : widget.title ?? SizedBox(),
                ),
                bottom: widget.appBarBottom ??
                    PreferredSize(
                      child: SizedBox(),
                      preferredSize: Size.fromHeight(0),
                    ),
              ),
      body: widget.body,
    );
  }
}
