import 'package:example/data/extension/example_num_ext.dart';
import 'package:example/data/extension/example_string_ext.dart';
import 'package:flutter/material.dart';
import 'package:ansu_ui/ansu_ui.dart';
import 'package:get/get.dart';

class MainExtention extends StatefulWidget {
  MainExtention({Key key}) : super(key: key);

  @override
  _MainExtentionState createState() => _MainExtentionState();
}

class _MainExtentionState extends State<MainExtention> {
  _innerButton({
    VoidCallback onPressed,
    Widget child,
    Widget icon,
  }) {
    return TextButton(
      onPressed: onPressed,
      child: Row(
        children: [
          Expanded(child: icon ?? SizedBox()),
          child,
          Spacer(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16.w),
      children: [
        _innerButton(
          onPressed: () => Get.to(ExampleNumExt()),
          child: Text('Num Ext'),
          icon: Icon(Icons.filter_9),
        ),
        _innerButton(
          onPressed: () => Get.to(ExampleStringExt()),
          child: Text('String Ext'),
          icon: Icon(Icons.text_fields),
        ),
      ],
    );
  }
}
