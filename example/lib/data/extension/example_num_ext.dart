import 'package:ansu_ui/ansu_ui.dart';
import 'package:flutter/material.dart';

class ExampleNumExt extends StatefulWidget {
  ExampleNumExt({Key key}) : super(key: key);

  @override
  _ExampleNumExtState createState() => _ExampleNumExtState();
}

class _ExampleNumExtState extends State<ExampleNumExt> {
  @override
  Widget build(BuildContext context) {
    return ASScaffold(
      title: 'Num Ext',
      body: ListView(
        children: [
          ListTile(title: Text('Comma')),
          ListTile(
            leading: Chip(label: Text('.comma')),
            title: Text('1000'),
            subtitle: Text(1000.comma()),
          ),
          ListTile(
            leading: Chip(label: Text('.comma')),
            title: Text('1000000'),
            subtitle: Text(1000000.comma()),
          ),
          ListTile(
            leading: Chip(label: Text('.comma')),
            title: Text('100.00'),
            subtitle: Text(100.00.comma()),
          ),
          ListTile(
            leading: Chip(label: Text('.comma')),
            title: Text('0.123456'),
            subtitle: Text(0.123456.comma()),
          ),
          ListTile(
            leading: Chip(label: Text('.comma')),
            title: Text('123456.789'),
            subtitle: Text(123456.789.comma()),
          ),
          ListTile(
            leading: Chip(label: Text('.comma')),
            title: Text('123456.7899999'),
            subtitle: Text(123456.7899999.comma(fixed: -1)),
            trailing: Chip(label: Text('without Fixed')),
          ),
          ListTile(title: Text('SizedBox')),
          ListTile(
            leading: Chip(label: Text('.wb')),
            title: Text('Width Box'),
            subtitle: Text('40.wb'),
            trailing: Container(
              height: 2.w,
              width: 40.w,
              color: Colors.red,
            ),
          ),
          ListTile(
            leading: Chip(label: Text('.hb')),
            title: Text('Height Box'),
            subtitle: Text('40.hb'),
            trailing: Container(
              height: 40.w,
              width: 2.w,
              color: Colors.red,
            ),
          ),
          ListTile(title: Text('Radius')),
          ListTile(
            leading: Chip(label: Text('.radius')),
            title: Text('Radius Gen'),
            subtitle: Text('10.radius'),
            trailing: Container(
              height: 30.w,
              width: 30.w,
              decoration: BoxDecoration(
                borderRadius: 10.radius,
                color: Colors.pink,
              ),
            ),
          ),
          ListTile(title: Text('EdgeInsets')),
          ListTile(
            leading: Chip(label: Text('.edge')),
            title: Text('EdgeInsets Gen'),
            subtitle: Text('10.edge'),
            trailing: Container(
              height: 30.w,
              width: 30.w,
              color: Colors.red,
              padding: 10.edge,
              child: Container(color: Colors.green),
            ),
          ),
        ],
      ),
    );
  }
}
