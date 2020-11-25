import 'package:ansu_ui/ansu_ui.dart';
import 'package:ansu_ui/buttons/as_gradientbutton.dart';
import 'package:flutter/material.dart';

class ExampleButton extends StatefulWidget {
  ExampleButton({Key key}) : super(key: key);

  @override
  _ExampleButtonState createState() => _ExampleButtonState();
}

class _ExampleButtonState extends State<ExampleButton> {
  @override
  Widget build(BuildContext context) {
    return ASScaffold(
      title: 'ASButton',
      body: ListView(
        children: [
          Row(
            children: [
              Text('danger'),
              Spacer(),
              ASButton.danger(
                title: '删除订单',
                onPressed: () {},
              ),
            ],
          ),
          Row(
            children: [
              Text('info'),
              Spacer(),
              ASButton.info(
                title: '删除订单',
                onPressed: () {},
              ),
            ],
          ),
          Row(
            children: [
              Text('warn'),
              Spacer(),
              ASButton.warn(
                title: '删除订单',
                onPressed: () {},
              ),
            ],
          ),
          Row(
            children: [
              Text('operation'),
              Spacer(),
              ASButton.operation(
                title: '删除订单',
                onPressed: () {},
              ),
            ],
          ),
          Row(
            children: [
              Text('order'),
              Spacer(),
              ASButton.order(
                title: '立即下单',
                onPressed: () {},
              )
            ],
          ),
          SizedBox(height: 12.w),
          Row(
            children: [
              Spacer(),
              Text(
                'ASLongButton',
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
              ),
              Spacer(),
            ],
          ),
          SizedBox(
            height: 12.w,
          ),
          Row(
            children: [
              Text('solid'),
              Spacer(),
              ASLongButton.solid(
                title: '确认',
                onPressed: () {},
              ),
            ],
          ),
          Row(
            children: [
              Text('hollow'),
              Spacer(),
              ASLongButton.hollow(
                title: '确认',
                onPressed: () {},
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 100.w),
            child: ASLongButton.solid(title: 'adaptable', onPressed: () {}),
          ),
          SizedBox(
            height: 12.w,
          ),
          Row(
            children: [
              Spacer(),
              Text(
                'ASGradientButton',
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
              ),
              Spacer(),
            ],
          ),
          SizedBox(
            height: 12.w,
          ),
          Row(
            children: [
              Text('pay'),
              Spacer(),
              ASGradientButton.pay(
                title: '支付',
                onPressed: () {},
              ),
            ],
          ),
          Row(
            children: [
              Text('opration'),
              Spacer(),
              ASGradientButton.operation(
                title: '自动拆票',
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
