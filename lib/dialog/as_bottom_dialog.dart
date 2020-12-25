import 'package:ansu_ui/ansu_ui.dart';
import 'package:ansu_ui/buttons/as_material_button.dart';
import 'package:flutter/material.dart';
import 'package:ansu_ui/styles/as_colors.dart';
import 'package:ansu_ui/extension/string_extension.dart';
import 'package:ansu_ui/extension/text_extension.dart';
import 'package:ansu_ui/extension/num_extension.dart';

///ASDialog
///
///`items`
///
///with auto cancel
class ASBottomDialog extends StatefulWidget {
  final List<Widget> items;
  ASBottomDialog({Key key, @required this.items}) : super(key: key);

  @override
  _ASBottomDialogState createState() => _ASBottomDialogState();
}

class _ASBottomDialogState extends State<ASBottomDialog> {
  _buildCancel() {
    return ASMaterialButton(
      color: kForegroundColor,
      onPressed: () {
        Navigator.pop(context);
      },
      child: '取消'.text.bold.black.size(18),
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
          ...widget.items.sepWidget(separate: ASDivider()),
          10.hb,
          _buildCancel(),
        ],
      ),
    );
  }
}
