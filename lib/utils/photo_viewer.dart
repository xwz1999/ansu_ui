import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ansu_ui/extension/num_extension.dart';


class PhotoViewer extends StatefulWidget {
  final File file;
  final String tag;
  PhotoViewer({Key key, this.file, this.tag}) : super(key: key);

  @override
  _PhotoViewerState createState() => _PhotoViewerState();
}

class _PhotoViewerState extends State<PhotoViewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Center(
          child: InteractiveViewer(
            boundaryMargin: 100.edge,
            child: Hero(
              tag: widget.tag,
              child: Image.file(widget.file),
            ),
          ),
        ),
      ),
    );
  }
}

toPhotoViewer(BuildContext context, {String tag, File file}) {
  Navigator.push(
    context,
    PageRouteBuilder(
      pageBuilder: (context, animation, secondAnimation) {
        return PhotoViewer(file: file, tag: tag);
      },
      opaque: false,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(opacity: animation, child: child);
      },
    ),
  );
}
