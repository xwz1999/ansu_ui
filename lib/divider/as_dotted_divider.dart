import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ASDottedDivider extends StatelessWidget {
  final Axis axis;
  final List<int>? dash;
  final Color? color;
  final double? dashWidth;
  final double? strokeWidth;
  const ASDottedDivider({
    required this.axis,
    this.dash = const <int>[2, 1],
    this.color = const Color(0xFFD8D8D8),
    this.dashWidth,
    this.strokeWidth,
  });

  ASDottedDivider.horizontal({
    this.dashWidth,
    this.strokeWidth,
    this.color = const Color(0xFFD8D8D8),
  })  : this.axis = Axis.horizontal,
        this.dash = const <int>[2, 1];

  ASDottedDivider.vertical({
    this.dashWidth,
    this.strokeWidth,
    this.color = const Color(0xFFD8D8D8),
  })  : this.axis = Axis.vertical,
        this.dash = const <int>[2, 1];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, boxConstraints) {
      final boxWidth = this.axis == Axis.horizontal
          ? boxConstraints.constrainWidth()
          : boxConstraints.constrainHeight();
      final _dashWidth = dashWidth ?? 10.w;
      final _dashPattern = (1 + dash![1] / dash![0]);
      final int count =
          (( boxWidth) / (_dashWidth * _dashPattern)).floor();
      return Flex(
          direction: axis,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
              count,
              (_) => SizedBox(
                    width: this.axis == Axis.horizontal
                        ? _dashWidth
                        : strokeWidth ?? 1.w,
                    height: this.axis == Axis.horizontal
                        ? strokeWidth ?? 1.w
                        : _dashWidth,
                    child:
                        DecoratedBox(decoration: BoxDecoration(color: color)),
                  )));
    });
  }
}
