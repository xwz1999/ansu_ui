import 'package:flutter/material.dart';

import '../codeviewer/code_style.dart';

typedef CodeBuilder = TextSpan Function(BuildContext context);

class CodeView extends StatefulWidget {
  final CodeBuilder text;
  final String title;
  CodeView({Key key, @required this.text, this.title = 'Code'})
      : super(key: key);

  @override
  _CodeViewState createState() => _CodeViewState();
}

class _CodeViewState extends State<CodeView> {
  TextStyle codeTheme = TextStyle(fontSize: 14);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(title: Text(widget.title)),
      body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: CodeStyle(
            baseStyle: codeTheme.copyWith(color: Colors.white70),
            numberStyle: codeTheme.copyWith(color: const Color(0xFFBD93F9)),
            commentStyle: codeTheme.copyWith(color: const Color(0xFF808080)),
            keywordStyle: codeTheme.copyWith(color: const Color(0xFF1CDEC9)),
            stringStyle: codeTheme.copyWith(color: const Color(0xFFFFA65C)),
            punctuationStyle:
                codeTheme.copyWith(color: const Color(0xFF8BE9FD)),
            classStyle: codeTheme.copyWith(color: const Color(0xFFD65BAD)),
            constantStyle: codeTheme.copyWith(color: const Color(0xFFFF8383)),
            child:
                Builder(builder: (context) => Text.rich(widget.text(context))),
          )),
    );
  }
}
