import 'package:ansu_ui/buttons/as_back_button.dart';
import 'package:ansu_ui/styles/as_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///ASScaffold
///
///made with Scaffold from `Material`
///
///`title`,`body`
///
///`leading`
class ASScaffold extends StatefulWidget {
  ///标题，可为`String`或`Text`
  final dynamic title;

  /// `Scaffold` body
  final Widget body;

  /// `Scaffold` leading
  final Widget leading;
  ASScaffold({
    Key key,
    @required this.title,
    this.leading,
    this.body,
  }) : super(key: key);

  @override
  _ASScaffoldState createState() => _ASScaffoldState();
}

class _ASScaffoldState extends State<ASScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kForegroundColor,
        elevation: 0,
        leading: ASBackButton(),
        centerTitle: true,
        title: DefaultTextStyle(
          style: TextStyle(
            color: kTextColor,
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
          child: widget.title is String ? Text(widget.title) : widget.title,
        ),
      ),
      body: widget.body,
    );
  }
}
