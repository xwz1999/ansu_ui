import 'package:ansu_ui/ansu_ui.dart';
import 'package:flutter/material.dart';

class ExampleBottomButton extends StatefulWidget {
  ExampleBottomButton({Key key}) : super(key: key);

  @override
  _ExampleBottomButtonState createState() => _ExampleBottomButtonState();
}

class _ExampleBottomButtonState extends State<ExampleBottomButton> {
  @override
  Widget build(BuildContext context) {
    return ASScaffold(
      title: 'ASBottomButton',
      body: Center(),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
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
        ],
      ),
    );
  }
}
