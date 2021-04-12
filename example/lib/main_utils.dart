import 'package:example/util_view/example_camera_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainUtils extends StatefulWidget {
  MainUtils({Key key}) : super(key: key);

  @override
  _MainUtilsState createState() => _MainUtilsState();
}

class _MainUtilsState extends State<MainUtils> {
  _innerButton({
    VoidCallback onPressed,
    Widget child,
    Widget icon,
  }) {
    return TextButton(
      onPressed: onPressed,
      child: Row(
        children: [
          Expanded(child: icon ?? SizedBox()),
          child,
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
        _innerButton(
          onPressed: () => Get.to(ExampleCameraView()),
          child: Text('CAMERA'),
          icon: Icon(Icons.camera),
        ),
      ],
    );
  }
}
