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
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        children: [
          SizedBox(
            height: 8.w,
          ),
          ASOptionTile(
            items: [
              ASListTile(
                  title: '转单号(UPS)',
                  text: 'DFADN2329TNAGA',
                  trail: Placeholder(),
                ),
                  ASListTile(
                  title: '订单编号',
                  text:
                      'DDAWMFOAGNAIOWNGOANIWOGNAOWIDJAWIOHFA92474Y2798489TY892YH8G67TGT2UBF29GB8298H42897YH472H',
                  // trail: Icon(Icons.ac_unit_outlined),
                ),
            ],
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
          20.hb,
          ASOptionTile.single(
            item: ASEditTile(
              title: Text('TEST'),
            ),
          ),
          20.hb,
          ASOptionTile.single(
            item: ASVerticalTileItem(
              title: Text('AS Vertical Tile'),
              child: TextField(),
            ),
          ),
        ],
      ),
    );
  }
}
