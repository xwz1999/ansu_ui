import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ansu_ui/styles/as_colors.dart';
import 'package:ansu_ui/scaffold/as_scaffold.dart';
import 'package:ansu_ui/extension/string_extension.dart';
import 'package:ansu_ui/extension/text_extension.dart';
import 'package:ansu_ui/utils/photo_viewer.dart';
import 'package:ansu_ui/utils/camera_util.dart';
import 'package:ansu_ui/extension/list_extension.dart';
import 'package:ansu_ui/divider/as_divider.dart';

class CameraView extends StatefulWidget {
  final File file;
  final String title;
  CameraView({Key key, this.file, this.title}) : super(key: key);

  @override
  _CameraViewState createState() => _CameraViewState();
}

class _CameraViewState extends State<CameraView> {
  _buildButton({String title, Color color = kTextColor, onPressed}) {
    return MaterialButton(
      child: title.text.bold.size(18).copyWith(color: color),
      onPressed: onPressed,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      height: 48.w,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ASScaffold(
      title: widget.title,
      body: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          alignment: Alignment.center,
          child: GestureDetector(
            onTap: () {
              toPhotoViewer(context, tag: widget.title, file: widget.file);
            },
            child: Hero(
              child: Image.file(
                widget.file,
                fit: BoxFit.cover,
              ),
              tag: widget.title,
            ),
          ),
        ),
      ),
      bottomNavigationBar: Material(
        color: kForegroundColor,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildButton(
              title: '重拍',
              onPressed: () async {
                File file = await camFile();
                if (file == null)
                  Navigator.pop(context);
                else
                  Navigator.pushReplacement(context, PageRouteBuilder(
                    pageBuilder: (context, animation, secondAnimation) {
                      return FadeTransition(
                        opacity: animation,
                        child: CameraView(file: file, title: widget.title),
                      );
                    },
                  ));
              },
            ),
            _buildButton(
              title: '删除',
              color: kDangerColor,
              onPressed: () => Navigator.pop(context),
            ),
            _buildButton(
              title: '确认',
              onPressed: () => Navigator.pop(context, widget.file),
            ),
          ].sepWidget(separate: ASDivider()),
        ),
      ),
    );
  }
}
