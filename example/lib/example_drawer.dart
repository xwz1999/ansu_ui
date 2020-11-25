import 'package:ansu_ui/ansu_ui.dart';
import 'package:flutter/material.dart';

class ExampleDrawer extends StatefulWidget {
  ExampleDrawer({Key key}) : super(key: key);

  @override
  _ExampleDrawerState createState() => _ExampleDrawerState();
}

class _ExampleDrawerState extends State<ExampleDrawer> {
  @override
  Widget build(BuildContext context) {
    return ASScaffold(
      title: 'Drawer',
      endDrawer: ASDrawer(
        children: [
          Text('title'),
        ],
        bottom: ASLongButton.solid(
          title: '确定',
          onPressed: () {},
        ),
      ),
      body: Center(
        child: Builder(
          builder: (context) {
            return ASLongButton.solid(
              title: 'DRAWER',
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
            );
          },
        ),
      ),
    );
  }
}
