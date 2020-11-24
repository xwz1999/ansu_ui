import 'package:ansu_ui/styles/as_colors.dart';
import 'package:ansu_ui/bar/as_tab_indicator.dart';
import 'package:flutter/material.dart';

/// ## 安速Tabbar
///
/// [items]
///
/// [controller] see more TabController
class ASTabBar extends StatefulWidget implements PreferredSizeWidget {
  final List<String> items;
  final TabController controller;

  ///可滚动
  final bool isScrollable;
  ASTabBar(
      {Key key,
      @required this.items,
      @required this.controller,
      this.isScrollable = false})
      : super(key: key);

  @override
  _ASTabBarState createState() => _ASTabBarState();

  @override
  Size get preferredSize => Size.fromHeight(46);
}

class _ASTabBarState extends State<ASTabBar> {
  @override
  Widget build(BuildContext context) {
    return TabBar(
      isScrollable: widget.isScrollable,
      controller: widget.controller,
      tabs: widget.items.map((e) => Tab(text: e)).toList(),
      labelStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
      unselectedLabelStyle: TextStyle(
        fontWeight: FontWeight.normal,
      ),
      labelColor: kTextColor,
      unselectedLabelColor: kTextSubColor,
      indicatorSize: TabBarIndicatorSize.label,
      indicatorPadding: EdgeInsets.zero,
      indicator: ASTabIndicator(),
    );
  }
}
