import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ansu_ui/styles/as_colors.dart';
import 'package:ansu_ui/extension/num_extension.dart';

class ASRadioButton<T> extends StatefulWidget {
  /// 选中的值
  final dynamic groupValue;

  ///按钮标题
  final String? title;

  /// 该按钮的值
  final T? value;

  ///按钮回调
  final Function(T value)? onTap;

  /// 是否多选
  final bool mulitpleChoice;
  ASRadioButton({
    Key? key,
    this.groupValue,
    this.title,
    this.value,
    this.onTap,
  })  : this.mulitpleChoice = false,
        super(key: key);
  ASRadioButton.mult({
    Key? key,
    this.groupValue,
    this.title,
    this.value,
    this.onTap,
  })  : this.mulitpleChoice = true,
        super(key: key);
  @override
  _ASRadioButtonState createState() => _ASRadioButtonState();
}

class _ASRadioButtonState extends State<ASRadioButton> {
  bool get _selected {
    if (widget.mulitpleChoice) {
      return (widget.groupValue as List).contains(widget.value);
    } else {
      return widget.value == widget.groupValue;
    }
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => widget.onTap!(widget.value),
      borderRadius: 13.radius,
      child: AnimatedContainer(
        padding: EdgeInsets.symmetric(
          horizontal: _selected ? 17.w : 16.w,
          vertical: _selected ? 5.w : 4.w,
        ),
        child: AnimatedDefaultTextStyle(
          child: Text(widget.title!),
          style: TextStyle(
            color: _selected ? kLightTextColor : kTextSubColor,
          ),
          duration: Duration(milliseconds: 300),
        ),
        duration: Duration(milliseconds: 300),
        decoration: BoxDecoration(
          color: _selected ? kPrimaryColor : Colors.transparent,
          borderRadius: 13.radius,
          border: _selected
              ? null
              : Border.all(
                  width: 1.w,
                  color: Color(0xFF979797),
                ),
        ),
      ),
    );
  }
}
