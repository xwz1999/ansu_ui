import 'package:ansu_ui/ansu_ui.dart';
import 'package:flutter/material.dart';

class ExampleTextFiled extends StatefulWidget {
  ExampleTextFiled({Key? key}) : super(key: key);

  @override
  _ExampleTextFiledState createState() => _ExampleTextFiledState();
}

class _ExampleTextFiledState extends State<ExampleTextFiled> {
  TextEditingController? _controller;
  @override
  Widget build(BuildContext context) {
    return ASScaffold(
      title: '文本框 TextFiled',
      backgroundColor: kForegroundColor,
      body: ListView(
        children: [
          'ASSearchTextField'.text.size(18.sp).make(),
          ASSearchTextField(
            controller: _controller,
            hintText: '搜索',
          ),
          40.w.heightBox,
          'ASSearchTextField.button'.text.size(18.sp).black.make(),
          ASSearchTextField.button(
            hintText: '搜索',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
