// BEGIN scaffold
import 'package:ansu_ui/ansu_ui.dart';
import 'package:example/codeviewer/code_segments.dart';
import 'package:example/common/code_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExampleScaffold extends StatefulWidget {
  ExampleScaffold({Key? key}) : super(key: key);

  @override
  _ExampleScaffoldState createState() => _ExampleScaffoldState();
}

class _ExampleScaffoldState extends State<ExampleScaffold>
    with TickerProviderStateMixin {
  late TabController _tabController;
  List<String>? tabs;

  @override
  void initState() {
    super.initState();
    tabs = List.generate(10, (index) => 'Tab $index');
    _tabController = TabController(
      length: tabs!.length,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ASScaffold(
      title: '框架 Scaffold',
      actions: [
        IconButton(
          icon: Icon(
            Icons.code,
            color: Colors.black54,
          ),
          onPressed: () => Get.to(
            CodeView(
              text: (context) => CodeSegments.scaffold(context),
            ),
          ),
        )
      ],
      appBarBottom: ASTabBar(
        items: tabs,
        isScrollable: true,
        controller: _tabController,
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
          ),
          TextButton(
            onPressed: () {
              Get.dialog(
                ASScaffold(
                  title: '框架 Scaffold',
                ),
                useSafeArea: false,
              );
            },
            child: Text('open drawer'),
          ),
        ],
      ),
    );
  }
}

// END
