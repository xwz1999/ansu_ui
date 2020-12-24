import 'package:flutter/material.dart';
import 'package:ansu_ui/styles/as_colors.dart';
import 'package:ansu_ui/extension/num_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ASCheckTag extends StatelessWidget {
  final bool checked;
  final Widget text;
  const ASCheckTag({
    Key key,
    this.checked = false,
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        AnimatedContainer(
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOutCubic,
          height: 14.w,
          width: 14.w,
          decoration: BoxDecoration(
            color: checked ? Color(0xFF00BF44) : Color(0xFFFF0000),
            borderRadius: 7.radius,
          ),
          alignment: Alignment.center,
          child: AnimatedSwitcher(
            duration: Duration(milliseconds: 300),
            switchInCurve: Curves.easeInOutCubic,
            switchOutCurve: Curves.easeInOutCubic,
            child: Icon(
              checked ? Icons.check : Icons.clear,
              key: ValueKey(checked),
              size: 10.w,
              color: kForegroundColor,
            ),
          ),
        ),
        6.wb,
        AnimatedDefaultTextStyle(
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOutCubic,
          style: TextStyle(
            color: checked ? Color(0xFF00BF44) : Color(0xFFFF0000),
          ),
          child: text,
        ),
      ],
    );
  }
}
