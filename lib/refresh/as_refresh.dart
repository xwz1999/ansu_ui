import 'package:ansu_ui/styles/as_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';

class ASRefresh extends StatefulWidget {
  final Widget child;
  final Future Function() onLoad;
  final Future Function() onRefresh;
  final EasyRefreshController controller;
  final bool firstRefresh;
  final Widget emptyWidget;
  final Widget firstRefreshWidget;
  ASRefresh({
    Key key,
    @required this.child,
    this.onLoad,
    this.onRefresh,
    this.controller,
    this.firstRefresh = true,
    this.emptyWidget,
    this.firstRefreshWidget,
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
      firstRefresh: widget.firstRefresh,
      emptyWidget: widget.emptyWidget,
      firstRefreshWidget: widget.firstRefreshWidget,
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
