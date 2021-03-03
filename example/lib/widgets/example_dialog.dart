import 'package:ansu_ui/ansu_ui.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class ExampleDialog extends StatefulWidget {
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
                Get.dialog(ASDialog(
                  close: true,
                  child: Text('确认吗'),
                  items: [
                    ASDialogButton.outline(
                      title: '确认',
                      onPressed: () {},
                    ),
                    ASDialogButton(
                      title: '确认',
                      onPressed: () {},
                    ),
                  ],
                ));
              }),
          ASButton.info(
              title: '有title的对话框',
              onPressed: () {
                Get.dialog(ASDeleteDialog(
                  title: '你确定删除xxx？',
                  body: '你确定删除xxxxxxxxxxxxxxxxxxxxx？',
                  onpressed: () {},
                ));
              }),
          ListTile(
            title: 'BOTTOM DIALOG'.text.make(),
            onTap: () {
              showASBottomDialog(
                context,
                items: [
                  ASBottomDialogItem(
                      title: 'TEST'.text.make(), onPressed: () {}),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
