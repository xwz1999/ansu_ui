import 'package:flutter/material.dart';
import 'text_style_extension.dart';

extension TextExtension on Text {
  Text get bold {
    return Text(
      this.data,
      style: this.style?.bold ?? TextStyle().bold,
    );
  }

  Text size(double size) {
    return Text(
      this.data,
      style: this.style?.size(size) ?? TextStyle().size(size),
    );
  }

  Text color(Color color) {
    return Text(
      this.data,
      style: this.style?.colorX(color) ?? TextStyle().colorX(color),
    );
  }
}
