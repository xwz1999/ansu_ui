import 'package:ansu_ui/extension/num_extension.dart';
import 'package:flutter/material.dart';

/// ## 弹框菜单
///```dart
/// int result = await showASPopUpMenu<int>(
///   context: context,
///   items: [
///     PopupMenuItem(child: Text('test'), value: 1),
///   ],
/// );
/// ```
Future<T?> showASPopUpMenu<T>({
  required BuildContext context,
  required List<PopupMenuEntry<T>> items,
  T? initValue,
}) async {
  final RenderBox renderBox = context.findRenderObject() as RenderBox;
  Size size = renderBox.size;
  return await showMenu(
    context: context,
    initialValue: initValue,
    position: RelativeRect.fromRect(
      Rect.fromPoints(
        renderBox.localToGlobal(Offset.zero,
            ancestor: Overlay.of(context)!.context.findRenderObject()),
        renderBox.localToGlobal(size.bottomRight(Offset.zero)),
      ),
      Offset.zero & Overlay.of(context)!.context.size!,
    ),
    items: items,
    shape: RoundedRectangleBorder(borderRadius: 10.radius),
  );
}
