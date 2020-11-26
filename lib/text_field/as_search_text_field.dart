import 'package:ansu_ui/styles/as_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///TextFiled
class ASSearchTextField extends StatefulWidget implements PreferredSizeWidget {
  ASSearchTextField({
    Key key,
    this.controller,
    this.hintText,
    this.onChanged,
    this.focusNode,
    this.onSubmitted,
  }) : super(key: key);

  ///控制器
  final TextEditingController controller;

  ///hint Text
  final String hintText;

  ///文字变化回调
  final ValueChanged<String> onChanged;

  ///完成输入回调
  final ValueChanged<String> onSubmitted;

  ///焦点
  final FocusNode focusNode;

  @override
  _ASSearchTextFieldState createState() => _ASSearchTextFieldState();

  @override
  Size get preferredSize => Size.fromHeight(42.w);
}

class _ASSearchTextFieldState extends State<ASSearchTextField> {
  get _border => OutlineInputBorder(
        borderRadius: BorderRadius.circular(21.w),
        borderSide: BorderSide(
          color: Color(0xFF979797),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42.w,
      padding: EdgeInsets.symmetric(
        horizontal: 15.w,
        vertical: 3.w,
      ),
      child: TextField(
        controller: widget.controller,
        onChanged: widget.onChanged,
        onSubmitted: widget.onSubmitted,
        focusNode: widget.focusNode,
        cursorColor: kPrimaryColor,
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: kTextSubColor,
            fontSize: 14.sp,
          ),
          border: _border,
          enabledBorder: _border,
          focusedBorder: _border,
          focusedErrorBorder: _border,
          prefixIcon: Padding(
            padding: EdgeInsets.only(left: 13.w, right: 8.w),
            child: Icon(
              Icons.search,
              size: 16.w,
              color: Colors.black,
            ),
          ),
          prefixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
          contentPadding: EdgeInsets.zero,
        ),
      ),
    );
  }
}
