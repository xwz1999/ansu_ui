import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AsGridImageView extends StatelessWidget {
  final List<File>? files;
  final List<String>? nets;
  final String? placeholder;

  const AsGridImageView.fromFile(
      {Key? key, required this.files, this.placeholder})
      : nets = null,
        super(key: key);

  const AsGridImageView.fromNets(
      {Key? key, required this.nets, this.placeholder})
      : files = null,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
        padding: EdgeInsets.all(10.w),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10.w,
          crossAxisSpacing: 10.w,
        ),
        shrinkWrap: true,
        children: files == null
            ? nets!
                .map((e) => FadeInImage.assetNetwork(
                    placeholder: placeholder ?? '', image: e))
                .toList()
            : files!.map((e) => Image.file(e)).toList());
  }
}
