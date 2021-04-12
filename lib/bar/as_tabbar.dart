import 'package:ansu_ui/badge/as_badge.dart';
import 'package:ansu_ui/bar/as_tab_indicator.dart';
import 'package:ansu_ui/bar/as_tabbar_item.dart';
import 'package:flutter/material.dart';
import 'package:ansu_ui/styles/as_colors.dart';
import 'package:velocity_x/velocity_x.dart';

/// ## 安速Tabbar
///
/// [items]
///
/// [controller] see more TabController
class ASTabBar extends StatelessWidget implements PreferredSizeWidget {
  ///items
  final List<String>? items;

  final List<ASTabBarItem>? tabItems;

  /// TabController
  final TabController controller;

  ///可滚动
  final bool isScrollable;
  ASTabBar(
      {Key? key,
      required this.items,
      required this.controller,
      this.isScrollable = false})
      : tabItems = null,
        super(key: key);

  /// ## TabBar with tag
  ///```dart
  /// ASTabBar.tag(
  ///   isScrollable: true,
  ///   tabItems: [
  ///     ASTabBarItem(title:'Tab1',tag:'12'),
  ///     ASTabBarItem(title:'Tab2'),
  ///   ],
  ///   controller: _tabController4,
  /// )
  ///```
  ///
  ASTabBar.tag(
      {Key? key,
      required this.tabItems,
      required this.controller,
      this.isScrollable = false})
      : items = null,
        super(key: key);

  bool get isTag => items?.isEmpty ?? true;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: TabBar(
        isScrollable: isScrollable,
        controller: controller,
        tabs: isTag
            ? tabItems!.map((e) {
                return Tab(
                  child: ASBadge(
                    child: e.title!.text.make(),
                    tag: e.tag,
                  ),
                );
              }).toList()
            : items!
                .map((e) => Tab(
                      child: e.text.make(),
                    ))
                .toList(),
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
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(46);
}
