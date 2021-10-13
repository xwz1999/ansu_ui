import 'dart:io';

import 'package:ansu_ui/extension/num_extension.dart';
import 'package:flutter/material.dart';

class PhotoViewer extends StatefulWidget {
  final File? file;
  final String? net;
  final String tag;

  static fromFile(BuildContext context,
      {required String tag, required File file}) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondAnimation) {
          return PhotoViewer.toFile(file: file, tag: tag);
        },
        opaque: false,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: animation, child: child);
        },
      ),
    );
  }

  static fromNet(BuildContext context,
      {required String tag, required String net}) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondAnimation) {
          return PhotoViewer.toNet(net: net, tag: tag);
        },
        opaque: false,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: animation, child: child);
        },
      ),
    );
  }

  PhotoViewer.toFile({
    Key? key,
    this.file,
    required this.tag,
  })  : net = null,
        super(key: key);

  PhotoViewer.toNet({Key? key, required this.tag, this.net})
      : file = null,
        super(key: key);

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
              child: widget.file != null
                  ? Image.file(widget.file!)
                  : Image.network(widget.net!),
            ),
          ),
        ),
      ),
    );
  }
}
