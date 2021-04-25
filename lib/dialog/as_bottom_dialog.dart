import 'package:ansu_ui/ansu_ui.dart';
import 'package:ansu_ui/buttons/as_material_button.dart';
import 'package:flutter/material.dart';
import 'package:ansu_ui/styles/as_colors.dart';
import 'package:ansu_ui/extension/num_extension.dart';
import 'package:velocity_x/velocity_x.dart';

///ASDialog
///
///`items`
///
///with auto cancel
class ASBottomDialog extends StatelessWidget {
  final List<Widget>? items;
  ASBottomDialog({Key? key, required this.items}) : super(key: key);

  _buildCancel(BuildContext context) {
    return ASMaterialButton(
      color: kForegroundColor,
      onPressed: () {
        Navigator.pop(context);
      },
      child: '取消'.text.black.size(18).make(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: kBackgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          ...(items??[]).sepWidget(separate: ASDivider()),
          10.hb,
          _buildCancel(context),
        ],
      ),
    );
  }
}
