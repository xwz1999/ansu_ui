import 'package:ansu_ui/ansu_ui.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExamplePicker extends StatefulWidget {
  ExamplePicker({Key key}) : super(key: key);

  @override
  _ExamplePickerState createState() => _ExamplePickerState();
}

class _ExamplePickerState extends State<ExamplePicker> {
  @override
  Widget build(BuildContext context) {
    return ASScaffold(
      title: '选择器',
      body: ListView(
        children: [
          ListTile(
            title: Text('日期选择器'),
            subtitle: Text('DatePicker'),
            trailing: ASButton(
              title: '日期选择器',
              onPressed: () async {
                DateTime date = await asDatePicker(context);
                Get.snackbar(date.toString(), 'MESSAGE');
              },
            ),
          ),
          ListTile(
            title: Text('自定义选择器'),
            subtitle: Text('CustomPicker'),
            trailing: ASButton(
              title: '自定义选择器',
              onPressed: () async {
                Get.bottomSheet(ASPickerBox(
                  title: '自定义选择器',
                  child: Text('CHILD'),
                ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
