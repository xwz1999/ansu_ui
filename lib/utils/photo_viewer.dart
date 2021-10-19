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

class _PhotoViewerState extends State<PhotoViewer>
    with SingleTickerProviderStateMixin {
  TransformationController _controller = TransformationController();
  Animation? _animationReset;
  late AnimationController _controllerReset;

  void reset() {
    _controllerReset.reset();
    _animationReset = Matrix4Tween(
      begin: _controller.value,
      end: Matrix4.identity(),
    ).animate(_controllerReset);
    _animationReset!.addListener(_onAnimateReset);
    _controllerReset.forward();
  }

  void _onAnimateReset() {
    _controller.value = _animationReset!.value;
    if (!_controllerReset.isAnimating) {
      _animationReset?.removeListener(_onAnimateReset);
      _animationReset = null;
      _controllerReset.reset();
    }
  }

  @override
  void initState() {
    _controllerReset =
        AnimationController(vsync: this, duration: Duration(milliseconds: 400));
    super.initState();
  }

  @override
  void dispose() {
    _controllerReset.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      onDoubleTap: () => reset(),
      child: Scaffold(
        backgroundColor: Colors.black54,
        body: InteractiveViewer(
          transformationController: _controller,
          boundaryMargin: 100.edge,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            alignment: Alignment.center,
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
