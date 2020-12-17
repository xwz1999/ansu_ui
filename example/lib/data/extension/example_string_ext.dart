import 'package:ansu_ui/ansu_ui.dart';
import 'package:flutter/material.dart';

class ExampleStringExt extends StatefulWidget {
  ExampleStringExt({Key key}) : super(key: key);

  @override
  _ExampleStringExtState createState() => _ExampleStringExtState();
}

class _ExampleStringExtState extends State<ExampleStringExt> {
  @override
  Widget build(BuildContext context) {
    return ASScaffold(
      title: 'String Ext',
      body: ListView(
        children: [
          ListTile(
            leading: Chip(label: Text('.phone')),
            title: Text('18888888888'),
            subtitle: Text('18888888888'.phone),
          ),
        ],
      ),
    );
  }
}
