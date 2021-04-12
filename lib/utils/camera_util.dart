import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ansu_ui/utils/camera_view.dart';

///获取相机文件
Future<File?> camFile({double maxHeight = 3000, double maxWidth = 3000}) async {
  var pickedFile = await ImagePicker().getImage(
    source: ImageSource.camera,
    maxHeight: maxHeight,
    maxWidth: maxWidth,
  );
  if (pickedFile == null) return null;
  return File(pickedFile.path);
}

Future<File?> camView(
  BuildContext context, {
  double maxHeight = 3000,
  double maxWidth = 3000,
  required String title,
}) async {
  File? file = await camFile(maxHeight: maxHeight, maxWidth: maxWidth);
  if (file == null) return null;
  return await Navigator.push(context, PageRouteBuilder(
    pageBuilder: (context, animation, secondAnimation) {
      return FadeTransition(
        opacity: animation,
        child: CameraView(file: file, title: title),
      );
    },
  ));
}
