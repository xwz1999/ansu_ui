import 'package:ansu_ui/ansu_ui.dart';
import 'package:flutter/material.dart';

class ExampleScaffold extends StatefulWidget {
  ExampleScaffold({Key key}) : super(key: key);

  @override
  _ExampleScaffoldState createState() => _ExampleScaffoldState();
}

class _ExampleScaffoldState extends State<ExampleScaffold>
    with TickerProviderStateMixin {
  TabController _tabController;
  List<String> tabs;

  @override
  void initState() {
    super.initState();
    tabs = List.generate(10, (index) => 'Tab $index');
    _tabController = TabController(
      length: tabs.length,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ASScaffold(
      title: '标题 SCaffold',
      appBarBottom: ASTabBar(
        items: tabs,
        isScrollable: true,
        controller: _tabController,
      ),
      endDrawer: ASDrawer(
        child: Text('DRAWER'),
      ),
      body: ListView(
        children: [
          Builder(
            builder: (context) {
              return TextButton(
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
                child: Text('open drawer'),
              );
            },
          )
        ],
      ),
    );
  }
}
