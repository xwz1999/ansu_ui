import 'dart:math';

import 'package:animated_collection/animated_collection.dart';
import 'package:ansu_ui/ansu_ui.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///ASCardExpandable.custom 自定义显示列表，
///默认自动将extra连接在children后面
class ASCardExpandable extends StatefulWidget {
  final Widget title;
  final List<Widget> mid;
  final List<Widget> children;
  final List<Widget> extra;

  ///自定义children和extra的排序，extra不自动排列在children后面。
  final bool custom;
  ASCardExpandable({
    Key key,
    @required this.title,
    this.children = const [],
    this.extra = const [],
    this.mid = const [],
  })  : custom = false,
        super(key: key);

  ///自定义children和extra的排序，extra不自动排列在children后面。
  ASCardExpandable.custom({
    Key key,
    @required this.title,
    this.children = const [],
    this.extra = const [],
    this.mid = const [],
  })  : custom = true,
        super(key: key);

  @override
  _ASCardExpandableState createState() => _ASCardExpandableState();

  static Widget tile(
      {@required String title, @required Widget child, Widget suffix}) {
    return Row(
      textBaseline: TextBaseline.alphabetic,
      children: [
        10.wb,
        34.hb,
        SizedBox(
          width: 85.w,
          child: title.text.black.size(14.sp).make(),
        ),
        DefaultTextStyle(style: TextStyle().black65.size(14), child: child)
            .expand(),
        suffix ?? SizedBox(),
        10.wb,
      ],
    );
  }
}

class _ASCardExpandableState extends State<ASCardExpandable> {
  ExpandableController _expandableController = ExpandableController();

  @override
  Widget build(BuildContext context) {
    return ASOptionTile(
      item: ExpandablePanel(
        theme: ExpandableThemeData(
          tapHeaderToExpand: false,
          hasIcon: false,
        ),
        controller: _expandableController,
        header: ASListTileX(
          title: DefaultTextStyle(
            child: widget.title,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16.sp,
            ),
          ),
          prefixes: widget.mid,
          suffix: ASMaterialButton(
            child: AnimatedSwitcher(
              duration: Duration(milliseconds: 300),
              child: Text(
                _expandableController.expanded ? '收缩' : '展开',
                key: ValueKey(_expandableController.expanded),
                style: TextStyle().colorX(kPrimaryColor).size(16),
              ),
            ),
            padding: 10.edge,
            icon: AnimatedRotate(
              child: Icon(
                CupertinoIcons.chevron_down,
                size: 16.w,
                color: kPrimaryColor,
              ),
              angle: _expandableController.expanded ? pi : 0,
            ),
            onPressed: () {
              _expandableController.toggle();
              setState(() {});
            },
          ),
        ),
        collapsed: Column(
          children: [
            SizedBox(),
            ...widget.children,
          ].sepWidget(separate: ASDivider(indent: 10.w, endIndent: 10.w)),
        ),
        expanded: Column(
          children: [
            SizedBox(),
            ...(widget.custom ? <Widget>[] : widget.children),
            ...widget.extra,
          ].sepWidget(separate: ASDivider(indent: 10.w, endIndent: 10.w)),
        ),
      ),
    );
  }
}
