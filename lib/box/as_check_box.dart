import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ASCheckBox extends StatefulWidget {
  final bool value;
  ASCheckBox({Key key, this.value = false}) : super(key: key);

  @override
  _ASCheckBoxState createState() => _ASCheckBoxState();
}

class _ASCheckBoxState extends State<ASCheckBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 17.w,
      width: 17.w,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFFD5D5D5),
          width: 1.w,
        ),
        borderRadius: BorderRadius.circular(17.w),
      ),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.fastOutSlowIn,
        height: widget.value ? 13.w : 5.w,
        width: widget.value ? 13.w : 5.w,
        decoration: BoxDecoration(
          color: Color(0xFFF69A2D).withOpacity(widget.value ? 1 : 0),
          borderRadius: BorderRadius.circular(13.w),
        ),
      ),
    );
  }
}
