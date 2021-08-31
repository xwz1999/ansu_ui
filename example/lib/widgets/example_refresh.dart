import 'package:ansu_ui/ansu_ui.dart';
import 'package:flutter/material.dart';

class ExampleRefresh extends StatefulWidget {
  ExampleRefresh({Key? key}) : super(key: key);

  @override
  _ExampleRefreshState createState() => _ExampleRefreshState();
}

class _ExampleRefreshState extends State<ExampleRefresh> {
  @override
  Widget build(BuildContext context) {
    return ASScaffold(
      title: '刷新',
      body: ASRefresh(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Text('test');
          },
          itemCount: 50,
        ),
        onRefresh: () async {},
        onLoad: () async {},
      ),
    );
  }
}
