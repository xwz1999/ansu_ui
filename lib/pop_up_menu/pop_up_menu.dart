import 'package:ansu_ui/utils/screen_adapter.dart';
import 'package:ansu_ui/extension/num_extension.dart';
import 'package:flutter/material.dart';

/// ## 弹框菜单
///```dart
/// showASPopUpMenu<int>(
///   context: context,
///   items: [
///     PopupMenuItem(child: 'test'.text, value: 1),
///   ],
/// ).then((value) {});
/// ```
Future<T> showASPopUpMenu<T>({
  @required BuildContext context,
  @required List<PopupMenuEntry<T>> items,
  T initValue,
}) async {
  final RenderBox renderBox = context.findRenderObject();
  Offset offset = renderBox.localToGlobal(Offset.zero);
  return await showMenu(
    context: context,
    initialValue: initValue,
    position: RelativeRect.fromLTRB(
      offset.dx,
      offset.dy,
      screenWidth,
      screenHeight,
    ),
    items: items,
    shape: RoundedRectangleBorder(borderRadius: 10.radius),
  );
}
