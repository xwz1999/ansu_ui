import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ansu_ui/styles/as_colors.dart';
import 'package:ansu_ui/extension/num_extension.dart';

///ASMaterialButton
///
///default value:
///
///height = 46.w
///
///radius = 5.radius
///
///padding = 0.edge
class ASMaterialButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final double? height;
  final Widget? icon;
  final double? radius;
  final Widget child;
  final EdgeInsets? padding;
  final Color? color;

  const ASMaterialButton({
    Key? key,
    this.onPressed,
    this.height,
    this.icon,
    required this.child,
    this.radius,
    this.padding,
    this.color,
  }) : super(key: key);

  ASMaterialButton.dropdown({
    Key? key,
    this.onPressed,
    this.height,
    required this.child,
    this.radius,
    this.padding,
    this.color,
  })  : icon = Icon(
          CupertinoIcons.chevron_down,
          size: 16.w,
          color: kTextSubColor,
        ),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: color,
      onPressed: onPressed,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      padding: padding ?? 0.edge,
      minWidth: 0,
      height: height ?? 46.w,
      child: icon == null
          ? child
          : Row(
              children: [
                child,
                4.wb,
                icon!,
              ],
            ),
      shape: RoundedRectangleBorder(
        borderRadius: (radius ?? 5).radius,
      ),
      elevation: 0,
    );
  }
}
