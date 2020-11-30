import 'package:ansu_ui/styles/as_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';

class ASRefresh extends StatefulWidget {
  final Widget child;
  final Future Function() onLoad;
  final Future Function() onRefresh;
  final EasyRefreshController controller;
  ASRefresh({
    Key key,
    @required this.child,
    this.onLoad,
    this.onRefresh,
    this.controller,
  }) : super(key: key);

  @override
  _ASRefreshState createState() => _ASRefreshState();
}

class _ASRefreshState extends State<ASRefresh> {
  @override
  Widget build(BuildContext context) {
    return EasyRefresh(
      child: widget.child,
      onRefresh: widget.onRefresh,
      onLoad: widget.onLoad,
      controller: widget.controller,
      header: MaterialHeader(
        valueColor: AlwaysStoppedAnimation(kPrimaryColor),
      ),
      footer: MaterialFooter(
        enableInfiniteLoad: false,
        valueColor: AlwaysStoppedAnimation(kPrimaryColor),
      ),
    );
  }
}
