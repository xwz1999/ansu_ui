import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension ImageExt on Image {
  ///get Image with size
  Image size(double size) =>
      Image(image: this.image, width: size.w, height: size.w);

  Image get i16 => this.size(16.w);
}
