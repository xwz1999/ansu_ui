import 'package:ansu_ui/ansu_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          ListTile(
            leading: ASCheckBox.checkStyle(value: _state),
            title: Text('CheckBox'),
            subtitle: Text('with styled'),
            onTap: () {
              setState(() {
                _state = !_state;
              });
            },
          ),
          ListTile(
            leading: SizedBox(width: 20.w,height: 20.w, child: ASCheckBox.checkStyle(value: _state,color: Colors.red,)),
            title: Text('CheckBox'),
            subtitle: Text('with redcolor'),
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
