import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'code_view.dart';

class CodeTile extends StatelessWidget {
  final Widget title;
  final Widget subTitle;
  final CodeBuilder builder;
  const CodeTile({Key key, this.title, this.subTitle, this.builder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: title,
      subtitle: subTitle,
      trailing: IconButton(
        icon: Icon(Icons.code),
        onPressed: () => Get.to(
          CodeView(
            text: builder,
          ),
        ),
      ),
    );
  }
}
