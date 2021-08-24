import 'package:ansu_ui/extension/list_extension.dart';
import 'package:example/codeviewer/code_segments.dart';
import 'package:example/component/example_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class ExampleListExt extends StatefulWidget {
  const ExampleListExt({Key key}) : super(key: key);

  @override
  _ExampleListExtState createState() => _ExampleListExtState();
}

class _ExampleListExtState extends State<ExampleListExt> {
  @override
  Widget build(BuildContext context) {
    return ExampleScaffold(
        title: 'String Ext',
        text: (context) => CodeSegments.stringExt(context),
        children: [
          Container(
            color: Colors.blue,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 50.w,
                  color: Colors.red,
                  child: Text('1'),
                ),
                Visibility(
                  visible: true,
                  child: Container(
                    width: double.infinity,
                    height: 50.w,
                    color: Colors.red,
                    child: Text('2'),
                  ),
                ),
                Offstage(
                  offstage: true,
                  child: Container(
                    width: double.infinity,
                    height: 50.w,
                    color: Colors.red,
                    child: Text('2'),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 50.w,
                  color: Colors.red,
                  child: Text('3'),
                ),
              ].sepWidget(separate: 10.w.heightBox),
            ),
          ),
        ]);
  }
}
