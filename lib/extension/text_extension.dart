import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension TextExtension on Text {
  Text get bold {
    return Text(
      this.data,
      style: this.style.copyWith(fontWeight: FontWeight.bold),
    );
  }

  Text size(double size) {
    return Text(
      this.data,
      style: this.style.copyWith(fontSize: size.w),
    );
  }

  Text color(Color color) {
    return Text(
      this.data,
      style: this.style.copyWith(color: color),
    );
  }
}
