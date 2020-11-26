import 'package:ansu_ui/ansu_ui.dart';
import 'package:flutter/material.dart';

class ExampleTextFiled extends StatefulWidget {
  ExampleTextFiled({Key key}) : super(key: key);

  @override
  _ExampleTextFiledState createState() => _ExampleTextFiledState();
}

class _ExampleTextFiledState extends State<ExampleTextFiled> {
  TextEditingController _controller;
  @override
  Widget build(BuildContext context) {
    return ASScaffold(
      title: '文本框 TextFiled',
      appBarBottom: ASSearchTextField(
        controller: _controller,
        hintText: '搜索',
      ),
      body: ListView(
        children: [
          ASSearchTextField.button(
            hintText: '搜索',
          ),
        ],
      ),
    );
  }
}
