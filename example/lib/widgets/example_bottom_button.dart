import 'package:ansu_ui/ansu_ui.dart';
import 'package:example/codeviewer/code_segments.dart';
import 'package:example/common/code_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';



class ExampleBottomButton extends StatefulWidget {
  ExampleBottomButton({Key? key}) : super(key: key);

  @override
  _ExampleBottomButtonState createState() => _ExampleBottomButtonState();
}

class _ExampleBottomButtonState extends State<ExampleBottomButton> {
  @override
  Widget build(BuildContext context) {
    return ASScaffold(
      title: 'ASBottomButton',
      actions: [
        IconButton(
          icon: Icon(
            Icons.code,
            color: Colors.black54,
          ),
          onPressed: () => Get.to(
            CodeView(
              text: (context) => CodeSegments.bottomButton(context),
            ),
          ),
        )
      ],
      body: Center(),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // BEGIN bottomButton
          ASBottomButton.infinity(
            title: '无渐变infinity',
            onPressed: () {},
          ),
          ASBottomButton.gradient(
            title: '有渐变gradient',
            onPressed: () {},
          ),
          Row(
            children: [
              SizedBox(
                width: 112.w,
                child: ASBottomButton.shortWhite(
                  title: 'shortwhite',
                  onPressed: () {},
                ),
              ),
              Expanded(
                  child: ASBottomButton.gradient(
                title: '有渐变gradient',
                onPressed: () {},
              ))
            ],
          )
          // END
        ],
      ),
    );
  }
}
