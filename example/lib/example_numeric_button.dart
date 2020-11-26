import 'package:ansu_ui/ansu_ui.dart';
import 'package:flutter/material.dart';

class ExampleNumericButton extends StatefulWidget {
  ExampleNumericButton({Key key}) : super(key: key);

  @override
  _ExampleNumericButtonState createState() => _ExampleNumericButtonState();
}

class _ExampleNumericButtonState extends State<ExampleNumericButton> {
  _showSnack(BuildContext context, String title) {
    Scaffold.of(context).showSnackBar(
      SnackBar(content: Text(title)),
    );
  }

  int _pickedValue = 0;

  @override
  Widget build(BuildContext context) {
    return ASScaffold(
      title: '数量选择器',
      body: Builder(
        builder: (context) {
          return ListView(
            children: [
              ListTile(
                title: Text(_pickedValue.toString()),
                subtitle: Text('一般用法'),
                trailing: ASNumericButton(
                  initValue: _pickedValue,
                  maxValue: 10,
                  onChange: (value) {
                    setState(() {
                      _pickedValue = value;
                    });
                  },
                  reachMax: (value) {
                    _showSnack(context, 'reach max');
                  },
                  reachMin: (value) {
                    _showSnack(context, 'reach min');
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
