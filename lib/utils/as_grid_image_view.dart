import 'dart:io';

import 'package:ansu_ui/ansu_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AsGridImageView extends StatelessWidget {
  final List<File>? files;
  final List<String>? nets;
  final String? placeholder;
  final void Function(dynamic value)? onDelete;
  final double? iconSize;

  const AsGridImageView.fromFile(
      {Key? key,
      required this.files,
      this.placeholder,
      this.onDelete,
      this.iconSize})
      : nets = null,
        super(key: key);

  const AsGridImageView.fromNets(
      {Key? key,
      required this.nets,
      this.placeholder,
      this.onDelete,
      this.iconSize})
      : files = null,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = iconSize ?? 16.w;
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
                .map((e) => GestureDetector(
                      onTap: () => PhotoViewer.fromNet(
                        context,
                        tag: e,
                        net: e,
                      ),
                      child: Stack(
                        children: [
                          Hero(
                            tag: e,
                            child: FadeInImage.assetNetwork(
                                placeholder: placeholder ?? '', image: e),
                          ),
                          Positioned(
                              top: size / 2,
                              right: size / 2,
                              child: GestureDetector(
                                onTap: () {
                                  if (onDelete == null) {
                                    onDelete!(e);
                                  }
                                },
                                child: Icon(
                                  CupertinoIcons.xmark_circle_fill,
                                  color: Colors.black45,
                                ),
                              ))
                        ],
                      ),
                    ))
                .toList()
            : files!
                .map((e) => Stack(children: [
                      Positioned(
                          top: 0,
                          right: 0,
                          child: GestureDetector(
                            onTap: () {
                              if (onDelete != null) {
                                onDelete!(e);
                              }
                            },
                            child: Icon(
                              CupertinoIcons.xmark_circle_fill,
                              color: Colors.black45,
                            ),
                          )),
                      GestureDetector(
                          onTap: () => PhotoViewer.fromFile(context,
                              tag: e.path, file: e),
                          child: Hero(tag: e.path, child: Image.file(e)))
                    ]))
                .toList());
  }
}
