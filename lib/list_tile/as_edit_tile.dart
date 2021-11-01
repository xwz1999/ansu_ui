import 'package:ansu_ui/extension/num_extension.dart';
import 'package:ansu_ui/styles/as_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ASEditTile extends StatelessWidget {
  final Widget? title;
  final String? hintText;
  final Widget? prefix;
  final TextEditingController? controller;
  final Function(String text)? onChange;
  final Function(String text)? onSubmitted;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyBoardType;
  final TextStyle? hintTextStyle;
  final Widget? suffix;
  final bool? obscureText;
  final String? obscuringCharacter;
  final bool enableEdit;

  ASEditTile({
    Key? key,
    this.title,
    this.hintText,
    this.controller,
    this.prefix,
    this.onChange,
    this.onSubmitted,
    this.inputFormatters,
    this.keyBoardType,
    this.hintTextStyle,
    this.suffix,
    this.obscureText,
    this.obscuringCharacter,
    this.enableEdit = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: 46.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          10.wb,
          InkWell(
            child: DefaultTextStyle(
              style: TextStyle(
                color: Colors.black.withOpacity(0.65),
                fontSize: 14.sp,
              ),
              child: title ?? Text(''),
            ),
          ),
          Offstage(
            offstage: prefix == null,
            child: prefix,
          ),
          Expanded(
            child: TextField(
              controller: controller,
              enabled: enableEdit,
              onChanged: onChange,
              inputFormatters: inputFormatters,
              keyboardType: keyBoardType,
              obscureText: obscureText ?? false,
              obscuringCharacter: obscuringCharacter ?? '*',
              onSubmitted: onSubmitted,
              textAlign: TextAlign.end,
              style: TextStyle(
                fontSize: 14.sp,
                color: kTextColor,
                fontWeight: FontWeight.bold,
              ),
              decoration: InputDecoration(
                suffix: 10.wb,
                border: InputBorder.none,
                isDense: true,
                contentPadding: EdgeInsets.zero,
                hintText: '$hintText',
                hintStyle: hintTextStyle ??
                    TextStyle(
                      color: kTextSubColor,
                      fontSize: 14.sp,
                    ),
              ),
            ),
          ),
          Offstage(
            offstage: suffix == null,
            child: suffix,
          )
        ],
      ),
    );
  }
}
