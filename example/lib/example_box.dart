import 'package:ansu_ui/ansu_ui.dart';
import 'package:flutter/material.dart';

class ExampleBox extends StatefulWidget {
  ExampleBox({Key key}) : super(key: key);

  @override
  _ExampleBoxState createState() => _ExampleBoxState();
}

class _ExampleBoxState extends State<ExampleBox> {
  bool _state = false;
  @override
  Widget build(BuildContext context) {
    return ASScaffold(
      title: '选框',
      body: ListView(
        children: [
          ListTile(
            leading: ASCheckBox(value: _state),
            title: Text('CheckBox'),
            onTap: () {
              setState(() {
                _state = !_state;
              });
            },
          ),
        ],
      ),
    );
  }
}
