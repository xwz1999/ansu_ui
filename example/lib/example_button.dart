import 'package:ansu_ui/ansu_ui.dart';
import 'package:flutter/material.dart';

class ExampleButton extends StatefulWidget {
  ExampleButton({Key key}) : super(key: key);

  @override
  _ExampleButtonState createState() => _ExampleButtonState();
}

class _ExampleButtonState extends State<ExampleButton> {
  @override
  Widget build(BuildContext context) {
    return ASScaffold(
      title: 'Button',
      body: ListView(
        children: [
          ASButton.delete('删除 DELETE', () {}),
          ASButton.info('信息 INFO', () {}),
          ASButton.warn('警告 WARNING', () {}),
          ASButton.opration('操作 OPERATION', () {}),
          SizedBox(height: 12.w),
          ASLongButton.solid('确认', () {}),
          ASLongButton.hollow('确认', () {}),
        ],
      ),
    );
  }
}
