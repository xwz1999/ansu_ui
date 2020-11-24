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
        children: [  ASButton.delete(title: '删除订单',onPressed: (){},),
          ASButton.info(title: '删除订单',onPressed: (){},),
          ASButton.warn(title: '删除订单',onPressed: (){},),
          ASButton.opration(title: '删除订单',onPressed: (){},),
          SizedBox(height: 12.w),
          ASLongButton.solid(title: '确认',onPressed: (){},),
          ASLongButton.hollow(title: '确认',onPressed: (){},),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 100.w),
            child: ASLongButton.solid(title: 'null',onPressed:(){} ),
          ),
        ],
      ),
    );
  }
}
