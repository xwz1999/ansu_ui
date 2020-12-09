import 'package:ansu_ui/styles/as_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ansu_ui/extension/num_extension.dart';

class ASDialog extends StatefulWidget {
  final bool close;

  ///按钮组
  final List<Widget> items;

  ///按钮与按钮之间的间距
  final double spacer;

  final EdgeInsets padding;

  final Widget child;

  final EdgeInsets childPadding;

  ASDialog({
    Key key,
    this.close = false,
    this.items,
    this.spacer,
    this.padding,
    @required this.child,
    this.childPadding,
  }) : super(key: key);

  @override
  _ASDialogState createState() => _ASDialogState();
}

class _ASDialogState extends State<ASDialog> {
  double get _widgetSpacer => widget.spacer ?? 20.w;
  EdgeInsets get _widgetPadding =>
      widget.padding ??
      EdgeInsets.only(
        top: 13.w,
        bottom: 20.w,
      );

  EdgeInsets get _childPadding =>
      widget.childPadding ??
      EdgeInsets.only(
        top: 40.w,
        bottom: 50.w,
      );
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 28.w),
        child: Material(
          color: kForegroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.w),
          ),
          child: Stack(
            children: [
              Padding(
                padding: _widgetPadding,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Center(
                      child: DefaultTextStyle(
                        style: TextStyle(
                          color: kTextColor,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        child: Padding(
                          padding: _childPadding,
                          child: widget.child,
                        ),
                      ),
                    ),
                    ...List.generate(widget.items.length * 2 - 1, (index) {
                      if (index.isEven)
                        return widget.items[index ~/ 2];
                      else
                        return _widgetSpacer.hb;
                    }),
                  ],
                ),
              ),
              widget.close
                  ? Positioned(
                      right: 0,
                      top: 0,
                      child: IconButton(
                        iconSize: 20.w,
                        icon: Icon(
                          CupertinoIcons.clear_circled,
                          color: Color(0xFF060606).withOpacity(0.85),
                        ),
                        onPressed: () => Navigator.pop(context),
                        splashRadius: 16.w,
                      ),
                    )
                  : SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
