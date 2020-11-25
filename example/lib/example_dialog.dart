import 'package:ansu_ui/ansu_ui.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExampleDialog extends StatefulWidget {
  ExampleDialog({Key key}) : super(key: key);

  @override
  _ExampleDialogState createState() => _ExampleDialogState();
}

class _ExampleDialogState extends State<ExampleDialog> {
  @override
  Widget build(BuildContext context) {
    return ASScaffold(
      title: '对话框 Dialog',
      body: ListView(
        children: [
          ASButton.info(
              title: '打开对话框',
              onPressed: () {
                Get.dialog(ASDialog());
              }),
        ],
      ),
    );
  }
}