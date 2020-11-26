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
          ListTile(
            title: Text('danger'),
            trailing: ASButton.danger(
              title: '删除订单',
              onPressed: () {},
            ),
          ),
          ListTile(
            title: Text('info'),
            trailing: ASButton.info(
              title: '删除订单',
              onPressed: () {},
            ),
          ),
          ListTile(
            title: Text('warn'),
            trailing: ASButton.warn(
              title: '删除订单',
              onPressed: () {},
            ),
          ),
          ListTile(
            title: Text('operation'),
            trailing: ASButton.operation(
              title: '删除订单',
              onPressed: () {},
            ),
          ),
          ListTile(
              title: Text('order'),
              trailing: ASButton.order(
                title: '立即下单',
                onPressed: () {},
              )),
          ListTile(
              title: Text('order'),
              subtitle: Text('null function'),
              trailing: ASButton.order(
                title: '立即下单',
              )),
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
          ListTile(
            title: Text('solid'),
            trailing: ASLongButton.solid(
              title: '确认',
              onPressed: () {},
            ),
          ),
          ListTile(
            title: Text('hollow'),
            trailing: ASLongButton.hollow(
              title: '确认',
              onPressed: () {},
            ),
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
          ListTile(
            title: Text('pay'),
            trailing: ASGradientButton.pay(
              title: '支付',
              onPressed: () {},
            ),
          ),
          ListTile(
            title: Text('opration'),
            trailing: ASGradientButton.operation(
              title: '自动拆票',
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
