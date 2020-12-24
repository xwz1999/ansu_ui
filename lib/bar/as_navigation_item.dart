import 'package:ansu_ui/badge/as_badge.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

BottomNavigationBarItem asNavigationItem(
  String path1,
  String path2,
  String title, {
  String tag,
}) {
  Widget icon = Image.asset(
    path1,
    height: 24.w,
    width: 24.w,
  );
  Widget activeIcon = Image.asset(
    path2,
    height: 24.w,
    width: 24.w,
  );
  return BottomNavigationBarItem(
    icon: ASBadge(child: icon, tag: tag),
    activeIcon: ASBadge(child: activeIcon, tag: tag),
    label: title,
  );
}
