import 'package:example/widgets/example_bottom_button.dart';
import 'package:example/widgets/example_box.dart';
import 'package:example/widgets/example_button.dart';
import 'package:example/widgets/example_dialog.dart';
import 'package:example/widgets/example_divider.dart';
import 'package:example/widgets/example_drawer.dart';
import 'package:example/widgets/example_listtile.dart';
import 'package:example/widgets/example_numeric_button.dart';
import 'package:example/widgets/example_picker.dart';
import 'package:example/widgets/example_pop_up_menu.dart';
import 'package:example/widgets/example_refresh.dart';
import 'package:example/widgets/example_scaffold.dart';
import 'package:example/widgets/example_style_color.dart';
import 'package:example/widgets/example_tab_bar.dart';
import 'package:example/widgets/example_tag.dart';
import 'package:example/widgets/example_text_field.dart';
import 'package:example/widgets/example_toast.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainHome extends StatefulWidget {
  MainHome({Key key}) : super(key: key);

  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  _innerButton({
    VoidCallback onPressed,
    String title,
    IconData icon,
  }) {
    return TextButton(
      onPressed: onPressed,
      child: Row(
        children: [
          Expanded(child: Icon(icon) ?? SizedBox()),
          Text(title),
          Spacer(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16.w),
      children: [
        Image.asset('assets/logo.webp', height: 50),
        SizedBox(height: 16.w),
        _innerButton(
          title: '颜色 Style Color',
          onPressed: () => Get.to(ExampleStyleColor()),
          icon: Icons.colorize,
        ),
        _innerButton(
          title: '按钮 Button',
          onPressed: () => Get.to(ExampleButton()),
        ),
        _innerButton(
            title: '框架 Scaffold', onPressed: () => Get.to(ExampleScaffold())),
        _innerButton(
            title: '选项卡 Tabbar', onPressed: () => Get.to(ExampleTabBar())),
        _innerButton(
            title: '数量选择器NumericButton',
            onPressed: () => Get.to(ExampleNumericButton())),
        _innerButton(
            title: '选择器 Pickers', onPressed: () => Get.to(ExamplePicker())),
        _innerButton(
          title: '底部按钮 BottomButton',
          onPressed: () => Get.to(ExampleBottomButton()),
        ),
        _innerButton(
          title: '标签 TAG',
          onPressed: () => Get.to(ExampleTag()),
        ),
        _innerButton(
          title: '抽屉 DRAWER',
          onPressed: () => Get.to(ExampleDrawer()),
        ),
        _innerButton(
          title: '对话框 Dialog',
          onPressed: () => Get.to(ExampleDialog()),
        ),
        _innerButton(
          title: '列表内容项 ListTile',
          onPressed: () => Get.to(ExampleListTile()),
        ),
        _innerButton(
          title: '文本框 TextField',
          onPressed: () => Get.to(ExampleTextFiled()),
        ),
        _innerButton(
          title: '刷新组件 Refresh',
          onPressed: () => Get.to(ExampleRefresh()),
        ),
        _innerButton(
          title: '选框 Box',
          onPressed: () => Get.to(ExampleBox()),
        ),
        _innerButton(
          title: 'Pop Up Menu',
          onPressed: () => Get.to(ExamplePopUpMenu()),
        ),
        _innerButton(
          title: 'Toast',
          onPressed: () => Get.to(ExampleToast()),
        ),
         _innerButton(
          title: 'Divider',
          onPressed: () => Get.to(ExampleDivider()),
        ),
      ],
    );
  }
}
