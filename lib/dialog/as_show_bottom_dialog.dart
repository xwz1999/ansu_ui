import 'package:ansu_ui/dialog/as_bottom_dialog.dart';
import 'package:flutter/material.dart';

///`items` better with ASBottomDialogItem
showASBottomDialog(
  BuildContext context, {
  List<Widget> items,
}) async {
  return await showModalBottomSheet(
    context: context,
    builder: (context) {
      return ASBottomDialog(items: items);
    },
  );
}
