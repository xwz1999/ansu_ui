import 'package:ansu_ui/ansu_ui.dart';
import 'package:example/main_extention.dart';
import 'package:example/main_home.dart';
import 'package:example/main_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bot_toast/bot_toast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: () => GetMaterialApp(
        title: 'Flutter Demo',
        home: MyHomePage(),
        builder: BotToastInit(),
        theme: ASTheme.lightTheme,
        navigatorObservers: [BotToastNavigatorObserver()],
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('zh'),
        ],
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    ASTheme.init();

    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    print(Theme.of(context).textTheme.headline1.fontFamily);
    return ASScaffold(
      leading: navigator.canPop()
          ? IconButton(
              icon: Icon(Icons.backpack, color: Colors.black),
              onPressed: () {},
            )
          : SizedBox(),
      title: '安速组件',
      body: TabBarView(
        controller: _tabController,
        children: [
          MainHome(),
          MainExtention(),
          MainUtils(),
        ],
      ),
      bottomNavigationBar: ASNavigationBar(
        controller: _tabController,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.extension),
            label: 'EXTENSION',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            label: 'UTILS',
          ),
        ],
      ),
    );
  }
}
