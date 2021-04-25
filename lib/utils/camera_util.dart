import 'dart:io';

import 'package:ansu_ui/dialog/as_bottom_dialog.dart';
import 'package:ansu_ui/dialog/as_bottom_dialog_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ansu_ui/utils/camera_view.dart';

Future<File?> pickImageFile(
    {double maxHeight = 3000, double maxWidth = 3000}) async {
  File? file = await Get.bottomSheet(ASBottomDialog(
    items: [
      ASBottomDialogItem(
        title: Text('相机'),
        onPressed: () async {
          Get.back(result: await camFile());
        },
      ),
      ASBottomDialogItem(
        title: Text('相册'),
        onPressed: () async {
          var pickedFile = await ImagePicker().getImage(
            source: ImageSource.gallery,
            maxHeight: maxHeight,
            maxWidth: maxWidth,
          );
          if (pickedFile != null) {
            Get.back(result: File(pickedFile.path));
          } else {
            Get.back();
          }
        },
      ),
    ],
  ));
  return file;
}

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
