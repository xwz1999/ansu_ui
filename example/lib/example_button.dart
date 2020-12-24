import 'package:ansu_ui/ansu_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExampleButton extends StatefulWidget {
  ExampleButton({Key key}) : super(key: key);

  @override
  _ExampleButtonState createState() => _ExampleButtonState();
}

class _ExampleButtonState extends State<ExampleButton> {
  int groupValue = 0;
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
            title: Text('pay'),
            trailing: ASGradientButton.pay(
              title: '支付',
              onPressed: null,
            ),
          ),
          ListTile(
            title: Text('opration'),
            trailing: ASGradientButton.operation(
              title: '自动拆票',
              onPressed: () {},
            ),
          ),
          ListTile(
            title: Text('Radio Button'),
          ),
          Wrap(
            children: [
              ASRadioButton(
                groupValue: groupValue,
                value: 0,
                title: '候选0',
                onTap: (_) => setState(() => groupValue = 0),
              ),
              ASRadioButton(
                groupValue: groupValue,
                value: 1,
                title: '候选1',
                onTap: (_) => setState(() => groupValue = 1),
              ),
              ASRadioButton(
                groupValue: groupValue,
                value: 2,
                title: '候选2',
                onTap: (_) => setState(() => groupValue = 2),
              ),
              ASRadioButton(
                groupValue: groupValue,
                value: 3,
                title: '候选3',
                onTap: (_) => setState(() => groupValue = 3),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
