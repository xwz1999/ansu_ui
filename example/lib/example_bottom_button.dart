import 'package:ansu_ui/ansu_ui.dart';
import 'package:ansu_ui/buttons/as_bottom_button.dart';
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
      title: 'BottomButton',
      body: Center(),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ASBottomButton.infinity(
            title: 'null',
            onPressed: () {},
          ),
          ASBottomButton.gradient(
            title: '新增地址',
            onPressed: () {},
          ),
          Row(
            children: [
              SizedBox(
                width: 112.w,
                child: ASBottomButton.shortWhite(
                  title: 'null',
                  onPressed: () {},
                ),
              ),
              Expanded(
                  child: ASBottomButton.gradient(
                title: 'null',
                onPressed: () {},
              ))
            ],
          )
        ],
      ),
    );
  }
}
