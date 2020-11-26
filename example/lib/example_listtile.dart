import 'package:ansu_ui/ansu_ui.dart';
import 'package:ansu_ui/divider/as_divider.dart';
import 'package:flutter/material.dart';

class ExampleListTile extends StatefulWidget {
  ExampleListTile({Key key}) : super(key: key);

  @override
  _ExampleListTileState createState() => _ExampleListTileState();
}

class _ExampleListTileState extends State<ExampleListTile> {
  @override
  Widget build(BuildContext context) {
    return ASScaffold(
      title: 'ASListTile',
      body: ListView(
        children: [
          SizedBox(
            height: 8.w,
          ),
          Container(
            color: Color(0xFFFFFFFF),
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Column(
              children: [
                ASListTile(
                  title: '转单号(UPS)',
                  text: 'DFADN2329TNAGA',
                  trail: Icon(Icons.ac_unit_rounded),
                ),
                ASDivider(),
                ASListTile(
                  title: '订单编号',
                  text:
                      'DDAWMFOAGNAIOWNGOANIWOGNAOWIDJAWIOHFA92474Y2798489TY892YH8G67TGT2UBF29GB8298H42897YH472H',
                  trail: Icon(Icons.ac_unit_outlined),
                ),
              ],
            ),
          ),
          20.hb,
          ASOptionTile(
            items: List.generate(
              3,
              (index) => ASOptionTileItem(
                leading: Icon(Icons.verified),
                title: Text('Test'),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
