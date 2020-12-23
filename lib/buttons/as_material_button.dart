import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ansu_ui/extension/num_extension.dart';

class ASMaterialButton extends StatelessWidget {
  final VoidCallback onPressed;
  final double height;
  final Widget icon;
  final double radius;
  final Widget child;

  const ASMaterialButton(
      {Key key,
      this.onPressed,
      this.height,
      this.icon,
      this.child,
      this.radius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      padding: 0.edge,
      minWidth: 0,
      height: height ?? 46.w,
      child: icon == null
          ? child
          : Row(
              children: [
                child,
                4.wb,
                icon,
              ],
            ),
      shape: RoundedRectangleBorder(
        borderRadius: radius.radius,
      ),
    );
  }
}
