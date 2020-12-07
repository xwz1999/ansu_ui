import 'package:ansu_ui/ansu_ui.dart';
import 'package:flutter/material.dart';
extension SeparateExt on List {
  List<Widget> sep([Widget separate]) {
    return List.generate(this.length * 2 - 1, (index) {
      if (index.isEven)
        return this[index ~/ 2];
      else
        return separate ?? 10.wb;
    });
  }
}
