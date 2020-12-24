import 'package:flutter/material.dart';
import 'package:ansu_ui/extension/string_extension.dart';
import 'package:ansu_ui/extension/text_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ansu_ui/extension/num_extension.dart';

class ASBadge extends StatelessWidget {
  final Widget child;
  final String tag;
  const ASBadge({Key key, @required this.child, this.tag})
      : assert(child != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return (tag?.length ?? 0) == 0
        ? child
        : Stack(
            overflow: Overflow.visible,
            children: [
              child,
              Positioned(
                right: -16.w,
                top: -8.w,
                child: Container(
                  constraints: BoxConstraints(minWidth: 16.w),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFFE70F1F),
                        Color(0xFFFF98A8),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: 8.radius,
                  ),
                  height: 16.w,
                  child: '12'.text.white.size(10),
                ),
              ),
            ],
          );
  }
}
