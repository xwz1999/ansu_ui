import 'package:ansu_ui/ansu_ui.dart';
import 'package:example/example_bottom_button.dart';
import 'package:example/example_dialog.dart';
import 'package:example/example_drawer.dart';
import 'package:example/example_listtile.dart';
import 'package:example/example_tag.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

import 'example_numeric_button.dart';
import 'example_scaffold.dart';
import 'example_button.dart';
import 'example_tab_bar.dart';
import 'example_picker.dart';
import 'example_style_color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      home: _ScreenAdapter(),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('zh'),
      ],
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
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return ASScaffold(
      leading: navigator.canPop()
          ? IconButton(
              icon: Icon(Icons.backpack, color: Colors.black),
              onPressed: () {},
            )
          : SizedBox(),
      title: '安速组件',
      body: ListView(
        padding: EdgeInsets.all(16.w),
        children: [
          Image.asset('assets/logo.webp', height: 50),
          SizedBox(height: 16.w),
          ASButton.info(
              title: '颜色 Style Color',
              onPressed: () => Get.to(ExampleStyleColor())),
          ASButton.info(
              title: '按钮 Button', onPressed: () => Get.to(ExampleButton())),
          ASButton.info(
              title: '框架 Scaffold', onPressed: () => Get.to(ExampleScaffold())),
          ASButton.info(
              title: '选项卡 Tabbar', onPressed: () => Get.to(ExampleTabBar())),
          ASButton.info(
              title: '数量选择器NumericButton',
              onPressed: () => Get.to(ExampleNumericButton())),
          ASButton.info(
              title: '选择器 Pickers', onPressed: () => Get.to(ExamplePicker())),
          ASButton.info(
            title: '底部按钮 BottomButton',
            onPressed: () => Get.to(ExampleBottomButton()),
          ),
          ASButton.info(
            title: '标签 TAG',
            onPressed: () => Get.to(ExampleTag()),
          ),
          ASButton.info(
            title: '抽屉 DRAWER',
            onPressed: () => Get.to(ExampleDrawer()),
          ),
          ASButton.info(
            title: '对话框 Dialog',
            onPressed: () => Get.to(ExampleDialog()),
          ),
          ASButton.info(title:'列表内容项 ListTile',
          onPressed: () => Get.to(ExampleListTile()),
          )
        ],
      ),
    );
  }
}
