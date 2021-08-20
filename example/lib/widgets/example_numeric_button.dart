import 'package:ansu_ui/ansu_ui.dart';
import 'package:example/codeviewer/code_segments.dart';
import 'package:example/common/code_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExampleNumericButton extends StatefulWidget {
  ExampleNumericButton({Key key}) : super(key: key);

  @override
  _ExampleNumericButtonState createState() => _ExampleNumericButtonState();
}

class _ExampleNumericButtonState extends State<ExampleNumericButton> {
  _showSnack(BuildContext context, String title) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(title)),
    );
  }

  int _pickedValue = 0;

  @override
  Widget build(BuildContext context) {
    return ASScaffold(
      title: '数量选择器',
      actions: [
        IconButton(
          icon: Icon(
            Icons.code,
            color: Colors.black54,
          ),
          onPressed: () => Get.to(
            CodeView(
              text: (context) => CodeSegments.numericButton(context),
            ),
          ),
        )
      ],
      body: Builder(
        builder: (context) {
          return ListView(
            children: [
              // BEGIN numericButton
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
              // END
            ],
          );
        },
      ),
    );
  }
}
