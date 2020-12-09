import 'package:ansu_ui/ansu_ui.dart';
import 'package:flutter/material.dart';
import 'package:ansu_ui/ansu_ui.dart';

class ExampleExtension extends StatefulWidget {
  ExampleExtension({Key key}) : super(key: key);

  @override
  _ExampleExtensionState createState() => _ExampleExtensionState();
}

class _ExampleExtensionState extends State<ExampleExtension> {
  @override
  Widget build(BuildContext context) {
    return ASScaffold(
      title: 'Extension',
      body: ListView(
        children: [
          ListTile(
            title: Text('.phone'),
            trailing: Text('17855823545  =>  ${'17855823545'.phone}'),
          ),
          ListTile(
            title: Text('.comma'),
            trailing: Text('1000  =>  ${1000.comma}'),
          ),
          ListTile(
            title: Text('.comma'),
            trailing: Text('1000000  =>  ${1000000.comma}'),
          ),
          ListTile(
            title: Text('.comma'),
            trailing: Text('100.00 =>  ${100.00.comma}'),
          ),
          ListTile(
            title: Text('.comma'),
            trailing: Text('0.123456 =>  ${0.123456.comma}'),
          ),
           ListTile(
            title: Text('.comma'),
            trailing: Text('123456.789 =>  ${123456.789.comma}'),
          ),
        ],
      ),
    );
  }
}
