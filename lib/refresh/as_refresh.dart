import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:ansu_ui/styles/as_colors.dart';

class ASRefresh extends StatelessWidget {
  final Widget child;
  final Future Function()? onLoad;
  final Future Function()? onRefresh;
  final EasyRefreshController? controller;
  final bool firstRefresh;
  final Widget? emptyWidget;
  final Widget? firstRefreshWidget;
  final ScrollController? scrollController;
  ASRefresh({
    Key? key,
    required this.child,
    this.onLoad,
    this.onRefresh,
    this.controller,
    this.firstRefresh = true,
    this.emptyWidget,
    this.firstRefreshWidget,
    this.scrollController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EasyRefresh(
      scrollController: scrollController,
      child: child,
      onRefresh: onRefresh,
      onLoad: onLoad,
      controller: controller,
      firstRefresh: firstRefresh,
      emptyWidget: emptyWidget,
      firstRefreshWidget: firstRefreshWidget,
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
