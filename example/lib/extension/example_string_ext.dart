import 'package:ansu_ui/ansu_ui.dart';
import 'package:example/codeviewer/code_segments.dart';
import 'package:example/component/example_scaffold.dart';
import 'package:flutter/material.dart';

class ExampleStringExt extends StatefulWidget {
  ExampleStringExt({Key? key}) : super(key: key);

  @override
  _ExampleStringExtState createState() => _ExampleStringExtState();
}

class _ExampleStringExtState extends State<ExampleStringExt> {
  @override
  Widget build(BuildContext context) {
    return ExampleScaffold(
      title: 'String Ext',
      text: (context) => CodeSegments.stringExt(context),
      children: [
        // BEGIN stringExt
        ListTile(
          leading: Chip(label: Text('.phone')),
          title: Text('18888888888'),
          subtitle: Text('18888888888'.phone),
        ),
        ListTile(
          leading: Chip(label: Text('.securePhone')),
          title: Text('18888888888'),
          subtitle: Text('18888888888'.securePhone),
        ),
        // END
      ],
    );
  }
}
