import 'package:ansu_ui/styles/as_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class ASCheckButton<T> extends StatelessWidget {
  final T object;
  final bool checked;
  final VoidCallback onTap;

  final String title;
  const ASCheckButton({
    Key? key,
    required this.object,
    required this.onTap,
    this.checked = false,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      height: 31.w,
      onPressed: onTap,
      shape: StadiumBorder(),
      color: checked ? kPrimaryColor : Color(0xFFF2F2F2),
      elevation: 0,
      child: Text(
        title,
        style: TextStyle(
          color: checked ? kLightTextColor : kTextColor,
        ),
      ),
    );
  }
}
