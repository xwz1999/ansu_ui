import 'package:ansu_ui/ansu_ui.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'example_scaffold.dart';
import 'example_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      home: _ScreenAdapter(),
    );
  }
}

class _ScreenAdapter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(375, 812), allowFontScaling: false);
    return MyHomePage();
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return ASScaffold(
      title: '安速组件',
      body: ListView(
        children: [
          ASButton.info(title:'Button',onpressed: () => Get.to(ExampleButton())),
          ASButton.info(title:'Scaffold', onpressed:() => Get.to(ExampleScaffold())),
        ],
      ),
    );
  }
}
