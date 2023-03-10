import 'package:ansu_ui/ansu_ui.dart';
import 'package:ansu_ui/divider/as_dotted_divider.dart';
import 'package:example/codeviewer/code_segments.dart';
import 'package:example/common/code_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExampleDivider extends StatefulWidget {
  ExampleDivider({Key? key}) : super(key: key);

  @override
  _ExampleDividerState createState() => _ExampleDividerState();
}

class _ExampleDividerState extends State<ExampleDivider> {
  @override
  Widget build(BuildContext context) {
    return ASScaffold(
      title: '分割线',
      actions: [
        IconButton(
          icon: Icon(Icons.code, color: Colors.black54),
          onPressed: () => Get.to(CodeView(
            text: (context) => CodeSegments.button(context),
          )),
        ),
      ],
      body: Center(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 50.w,
              color: Colors.red,
              child: 'ASDivider'.text.make(),
            ),
            ASDivider(
              color: Colors.black,
            ),
            Row(
              children: [
                Container(
                  height: 50.w,
                  color: Colors.red,
                ).expand(),
                ASVDivider(),
                Container(
                  height: 50.w,
                  color: Colors.red,
                ).expand(),
              ],
            ),
            ASDivider(),
            Container(
              width: double.infinity,
              height: 50.w,
              color: Colors.red,
              child: 'ASDottedDivider'.text.make(),
            ),
            ASDottedDivider.horizontal(
              color: Colors.black,
            ),
            Container(
              height: 100.w,
              child: Row(
                children: [
                  Container(
                    color: Colors.red,
                  ).expand(),
                  ASDottedDivider.vertical(
                    color: Colors.black,
                  ),
                  Container(
                    color: Colors.red,
                  ).expand(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
