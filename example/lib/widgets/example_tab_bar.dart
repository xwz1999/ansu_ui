import 'package:ansu_ui/ansu_ui.dart';
import 'package:example/codeviewer/code_segments.dart';
import 'package:example/common/code_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExampleTabBar extends StatefulWidget {
  ExampleTabBar({Key? key}) : super(key: key);

  @override
  _ExampleTabBarState createState() => _ExampleTabBarState();
}

class _ExampleTabBarState extends State<ExampleTabBar>
    with TickerProviderStateMixin {
  TabController? _tabController1;
  TabController? _tabController2;
  TabController? _tabController3;
  TabController? _tabController4;
  @override
  void initState() {
    super.initState();
    _tabController1 = TabController(length: 3, vsync: this);
    _tabController2 = TabController(length: 5, vsync: this);
    _tabController3 = TabController(length: 10, vsync: this);
    _tabController4 = TabController(length: 10, vsync: this);
  }

  @override
  void dispose() {
    _tabController1?.dispose();
    _tabController2?.dispose();
    _tabController3?.dispose();
    _tabController4?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ASScaffold(
      title: '选项卡 TabBar',
      actions: [
        IconButton(
          icon: Icon(
            Icons.code,
            color: Colors.black54,
          ),
          onPressed: () => Get.to(
            CodeView(text: (context) => CodeSegments.tabBar(context)),
          ),
        )
      ],
      body: Material(
        color: kForegroundColor,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // BEGIN tabBar
            ASTabBar(
              items: ['全部', 'Part1', 'Part2'],
              controller: _tabController1!,
            ),
            ASTabBar(
              items: List.generate(5, (index) => 'Tab $index'),
              controller: _tabController2!,
            ),
            ASTabBar(
              isScrollable: true,
              items: List.generate(10, (index) => 'Tab $index'),
              controller: _tabController3!,
            ),
            ASTabBar.tag(
              isScrollable: true,
              tabItems: List.generate(10, (index) => 'Tab $index')
                  .map((e) => ASTabBarItem(title: e, tag: e))
                  .toList(),
              controller: _tabController4!,
            ),

            // END
          ],
        ),
      ),
    );
  }
}
