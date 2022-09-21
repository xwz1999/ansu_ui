import 'package:ansu_ui/styles/as_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///TextFiled
class ASSearchTextField extends StatefulWidget implements PreferredSizeWidget {
  ASSearchTextField({
    Key? key,
    this.controller,
    this.hintText,
    this.onChanged,
    this.focusNode,
    this.onSubmitted,
    this.margin,
    this.onPressed,
    this.height,
    this.prefix,
    this.suffix,
  })  : button = false,
        super(key: key);

  ///
  ASSearchTextField.button({
    Key? key,
    this.controller,
    this.hintText,
    this.onChanged,
    this.focusNode,
    this.onSubmitted,
    this.margin,
    this.onPressed,
    this.height,
    this.prefix,
    this.suffix,
  })  : button = true,
        super(key: key);

  ///渲染成按钮
  final bool button;

  ///控制器
  final TextEditingController? controller;

  ///hint Text
  final String? hintText;

  ///文字变化回调
  final ValueChanged<String>? onChanged;

  ///完成输入回调
  final ValueChanged<String>? onSubmitted;

  ///焦点
  final FocusNode? focusNode;

  ///margin
  final EdgeInsets? margin;

  final VoidCallback? onPressed;

  ///高度
  final double? height;

  ///搜索内容筛选
  final Widget? prefix;

  /// 后置widget 只有非button类型有效
  final Widget? suffix;

  @override
  _ASSearchTextFieldState createState() => _ASSearchTextFieldState();

  @override
  Size get preferredSize => Size.fromHeight(this.height ?? 42.w);
}

class _ASSearchTextFieldState extends State<ASSearchTextField> {
  get _border => OutlineInputBorder(
        borderRadius: BorderRadius.circular(21.w),
        borderSide: BorderSide(
          color: Color(0xFF979797),
          width: 1.w,
        ),
      );

  _buildButton() {
    return Padding(
      padding: widget.margin ??
          EdgeInsets.symmetric(
            horizontal: 15.w,
            vertical: 3.w,
          ),
      child: MaterialButton(
        padding: EdgeInsets.zero,
        color: Color(0xFFF8F8F8),
        elevation: 0,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(21.w),
          side: BorderSide(
            color: Color(0xFF979797),
            width: 1.w,
          ),
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 13.w, right: 8.w),
              child: Icon(
                Icons.search,
                size: 16.w,
                color: Colors.black,
              ),
            ),
            Expanded(
              child: Text(
                widget.hintText ?? '',
                style: TextStyle(
                  color: kTextSubColor,
                  fontSize: 14.sp,
                ),
              ),
            ),
          ],
        ),
        onPressed: widget.onPressed,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (widget.button) return _buildButton();
    return Container(
      height: 42.w,
      padding: widget.margin ??
          EdgeInsets.symmetric(
            horizontal: 15.w,
            vertical: 3.w,
          ),
      child: TextField(
        controller: widget.controller,
        onChanged: widget.onChanged,
        onSubmitted: widget.onSubmitted,
        onTap: widget.onPressed,
        focusNode: widget.focusNode,
        cursorColor: kPrimaryColor,
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
            fillColor: Color(0xFFF8F8F8),
            filled: true,
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
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.search,
                    size: 16.w,
                    color: Colors.black,
                  ),
                  widget.prefix ?? SizedBox(),
                ],
              ),
            ),
            prefixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
            contentPadding: EdgeInsets.zero,
            suffix: widget.suffix,
            suffixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0)),
      ),
    );
  }
}
