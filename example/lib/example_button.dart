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
          ASButton.delete(
            title: '删除订单',
            onpressed: () {},
          ),
          ASButton.info(
            title: '删除订单',
            onpressed: () {},
          ),
          ASButton.warn(
            title: '删除订单',
            onpressed: () {},
          ),
          ASButton.opration(
            title: '删除订单',
            onpressed: () {},
          ),
          SizedBox(height: 12.w),
          ASLongButton.solid(
            title: '确认',
            onpressed: () {},
          ),
          ASLongButton.hollow(
            title: '确认',
            onpressed: () {},
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 100.w),
            child: ASLongButton.solid(title: 'null', onpressed: () {}),
          ),
        ],
      ),
    );
  }
}
