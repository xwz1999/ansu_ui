import 'package:ansu_ui/ansu_ui.dart';
import 'package:flutter/material.dart';

class ExampleScaffold extends StatefulWidget {
  ExampleScaffold({Key key}) : super(key: key);

  @override
  _ExampleScaffoldState createState() => _ExampleScaffoldState();
}

class _ExampleScaffoldState extends State<ExampleScaffold> {
  @override
  Widget build(BuildContext context) {
    return ASScaffold(
      title: '标题',
    );
  }
}
