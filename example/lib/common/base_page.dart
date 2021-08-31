import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'code_view.dart';

class BasePage extends StatelessWidget {
  final String title;
  final Widget body;
  final List<Widget>? actions;
  final CodeBuilder? codeBuilder;
  const BasePage(
      {Key? key,
      required this.title,
      required this.body,
      this.actions,
      this.codeBuilder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: actions ??
            [
              IconButton(
                icon: Icon(Icons.code),
                onPressed: () => Get.to(CodeView(text: codeBuilder)),
              ),
            ],
      ),
      body: body,
    );
  }
}
