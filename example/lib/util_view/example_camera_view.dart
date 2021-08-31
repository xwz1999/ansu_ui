import 'dart:io';

import 'package:ansu_ui/ansu_ui.dart';
import 'package:example/codeviewer/code_segments.dart';
import 'package:example/component/example_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ExampleCameraView extends StatefulWidget {
  ExampleCameraView({Key? key}) : super(key: key);

  @override
  _ExampleCameraViewState createState() => _ExampleCameraViewState();
}

class _ExampleCameraViewState extends State<ExampleCameraView> {
  @override
  Widget build(BuildContext context) {
    return ExampleScaffold(
      title: 'Camera View',
      text: (context) => CodeSegments.cameraView(context),
      children: [
        // BEGIN cameraView
        ListTile(
          title: 'CameraView'.text.make(),
          onTap: () async {
            File? file = await camView(context, title: 'TEST');
            print(await file?.length());
          },
        ),
        // END
      ],
    );
  }
}
