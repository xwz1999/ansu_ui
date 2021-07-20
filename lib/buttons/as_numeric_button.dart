import 'package:ansu_ui/painters/as_numeric_painter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ansu_ui/styles/as_colors.dart';

///## 数量选择组件
class ASNumericButton extends StatefulWidget {
  ///初始值
  final int initValue;

  ///最小值
  ///
  ///包含该值
  ///
  ///default value : `0`
  final int minValue;

  ///最大值
  ///
  ///包含该值
  ///
  ///default value : `9999`
  final int maxValue;

  ///后缀
  final String? suffix;

  ///达到最大值
  final Function(int value)? reachMax;

  ///达到最小值
  final Function(int value)? reachMin;

  ///
  final Function(int value) onChange;
  ASNumericButton({
    Key? key,
    required this.initValue,
    this.suffix,
    this.minValue = 0,
    this.maxValue = 9999,
    this.reachMax,
    this.reachMin,
    required this.onChange,
  }) : super(key: key);

  @override
  _ASNumericButtonState createState() => _ASNumericButtonState();
}

class _ASNumericButtonState extends State<ASNumericButton> {
  FocusNode _focusNode = FocusNode();
  TextEditingController? _controller;
  BorderSide _outline = BorderSide(
    color: Color(0xFFD8D4D4),
    width: 1.w,
  );

  late int _displayValue;

  Widget _buildButton({
    required CustomPainter painter,
    required VoidCallback onPressed,
    required BorderRadius borderRadius,
  }) {
    return Container(
      height: 32.w,
      width: 32.w,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFFD8D4D4),
          width: 1.w,
        ),
        borderRadius: borderRadius,
        color: kForegroundColor,
      ),
      child: MaterialButton(
        onPressed: onPressed,
        child: CustomPaint(
          painter: painter,
        ),
        splashColor: kPrimaryColor,
        highlightColor: kPrimaryColor.withOpacity(0.3),
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius,
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _displayValue = widget.initValue;
    _controller = TextEditingController(text: widget.initValue.toString());
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildButton(
          painter: ASNUmericPainter.minus(),
          onPressed: () {
            _focusNode.unfocus();
            if (_displayValue > widget.minValue) {
              _displayValue--;
              widget.onChange(_displayValue);
              _controller!.text = _displayValue.toString();
              setState(() {});
            } else {
              if (widget.reachMin != null) widget.reachMin!(_displayValue);
            }
          },
          borderRadius: BorderRadius.horizontal(left: Radius.circular(16.w)),
        ),
        GestureDetector(
          onTap: () {
            _focusNode.requestFocus();
          },
          child: Container(
            height: 32.w,
            width: 98.w,
            alignment: Alignment.center,
            child: IntrinsicWidth(
              child: TextField(
                keyboardType: TextInputType.number,
                controller: _controller,
                onChanged: (text) {
                  int? value = int.tryParse(text);
                  _displayValue = value ?? widget.initValue;
                  setState(() {});
                  widget.onChange(_displayValue);
                },
                focusNode: _focusNode,
                style: TextStyle(
                  color: kTextColor,
                  fontSize: 14.sp,
                ),
                cursorColor: kPrimaryColor,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.zero,
                  isDense: true,
                  suffixText: widget.suffix,
                  suffixStyle: TextStyle(
                    color: Colors.black.withOpacity(0.32),
                    fontSize: 14.sp,
                  ),
                ),
              ),
            ),
            decoration: BoxDecoration(
              border: Border(
                top: _outline,
                bottom: _outline,
              ),
              color: Color(0xFFF7F7F7),
            ),
          ),
        ),
        _buildButton(
          painter: ASNUmericPainter.plus(),
          onPressed: () {
            _focusNode.unfocus();
            if (_displayValue < widget.maxValue) {
              _displayValue++;
              widget.onChange(_displayValue);
              _controller!.text = _displayValue.toString();
              setState(() {});
            } else {
              if (widget.reachMax != null) widget.reachMax!(_displayValue);
            }
          },
          borderRadius: BorderRadius.horizontal(right: Radius.circular(16.w)),
        ),
      ],
    );
  }
}
