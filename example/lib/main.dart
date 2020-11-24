import 'package:ansu_ui/ansu_ui.dart';
import 'package:ansu_ui/buttons/as_button.dart';
import 'package:ansu_ui/buttons/as_longbutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'example_scaffold.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
      body: ListView(
        children: [
          ASButton.delete(title: '删除订单',onpressed: (){},),
          ASButton.info(title: '删除订单',onpressed: (){},),
          ASButton.warn(title: '删除订单',onpressed: (){},),
          ASButton.opration(title: '删除订单',onpressed: (){},),
          SizedBox(height: 12.w),
          ASLongButton.solid(title: '确认',onpressed: (){},),
          ASLongButton.hollow(title: '确认',onpressed: (){},),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 100.w),
            child: ASLongButton.solid(title: 'null',onpressed:(){} ),
          ),
          
          TextButton(
              onPressed: () {
                Get.to(ExampleScaffold());
              },
              child: Text('SCAFFOLD')),
        ],
      ),
    );
  }
}
