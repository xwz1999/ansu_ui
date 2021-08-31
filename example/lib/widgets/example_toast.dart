import 'package:ansu_ui/toast/as_toast.dart';
import 'package:example/codeviewer/code_segments.dart';
import 'package:example/component/example_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ExampleToast extends StatelessWidget {
  const ExampleToast({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExampleScaffold(
      title: 'Toast',
      text: (context) => CodeSegments.toast(context),
      children: [
        // BEGIN toast
        ListTile(
          title: 'Toast'.text.make(),
          onTap: () => ASToast.show('Toast!'),
        ),
        ListTile(
          title: 'Toast'.text.make(),
          onTap: () {
            Function cancel = ASToast.loading;
            Future.delayed(Duration(seconds: 2), () => cancel());
          },
        ),
        // END
      ],
    );
  }
}
