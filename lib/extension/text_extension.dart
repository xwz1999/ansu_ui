import 'package:flutter/material.dart';
import 'text_style_extension.dart';

extension TextExtension on Text {
  Text get bold => Text(
        this.data,
        style: this.style?.bold ?? TextStyle().bold,
      );

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

  Text get white =>
      Text(this.data, style: this.style?.white ?? TextStyle().white);

  Text get black =>
      Text(this.data, style: this.style?.black ?? TextStyle().black);

  Text get black65 =>
      Text(this.data, style: this.style?.black65 ?? TextStyle().black65);
}
