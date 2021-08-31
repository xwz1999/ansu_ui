import 'package:ansu_ui/scaffold/as_scaffold.dart';
import 'package:example/common/code_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExampleScaffold extends StatelessWidget {
  final String title;
  final CodeBuilder? text;
  final List<Widget> children;
  const ExampleScaffold({
    Key? key,
    required this.title,
    this.text,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ASScaffold(
      title: title,
      actions: [
        text == null
            ? SizedBox()
            : IconButton(
                icon: Icon(Icons.code, color: Colors.black54),
                onPressed: () => Get.to(CodeView(text: text)),
              ),
      ],
      body: ListView(children: children),
    );
  }
}
