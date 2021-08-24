import 'package:ansu_ui/extension/num_extension.dart';
import 'package:flutter/material.dart';

extension SeparateExt on List<Widget> {
  List<Widget> sepWidget({
    Widget? separate,
  }) {
    if (this.isEmpty) return [];
    this.removeWhere((element) {
      if (element.runtimeType == Offstage) {
        return (element as Offstage).offstage;
      }

      if (element.runtimeType == Visibility) {
        return (element as Visibility).visible;
      }
      return false;
    });
    return List.generate(this.length * 2 - 1, (index) {
      if (index.isEven)
        return this[index ~/ 2];
      else
        return separate ?? 10.wb;
    });
  }
}
