import 'package:ansu_ui/ansu_ui.dart';
import 'package:ansu_ui/buttons/as_material_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ansu_ui/extension/text_style_extension.dart';

///ASBottomDialog item
class ASBottomDialogItem extends StatelessWidget {
  final Widget title;
  final VoidCallback? onPressed;
  const ASBottomDialogItem({Key? key, required this.title, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ASMaterialButton(
      height: 48.w,
      color: kForegroundColor,
      onPressed: () {
        onPressed!();
      },
      child: DefaultTextStyle(
        style: TextStyle().black.bold.size(18),
        child: title,
      ),
    );
  }
}
