import 'package:ansu_ui/scaffold/as_scaffold.dart';
import 'package:ansu_ui/tag/as_tag.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExampleTag extends StatefulWidget {
  ExampleTag({Key key}) : super(key: key);

  @override
  _ExampaleTagState createState() => _ExampaleTagState();
}

class _ExampaleTagState extends State<ExampleTag> {
  @override
  Widget build(BuildContext context) {
    return ASScaffold(
        title: 'ASTag',
        body: Column(
          children: [
            Row(
              children: [
                Text('yellowSolid'),
                Spacer(),
                ASTag.yellowSolid('带电'),
              ],
            ),
            Row(
              children: [
                Text('redHollow'),
                Spacer(),
                ASTag.redHollow('带磁'),
              ],
            ),
            Row(
              children: [
                Text('yellowHollow'),
                Spacer(),
                ASTag.yellowHollow('选填'),
              ],
            ),
            Row(
              children: [
                Text('redHollow  width:45.w'),
                Spacer(),
                ASTag.redHollow(
                  '未付款',
                  width: 45.w,
                ),
              ],
            ),
            Row(
              children: [
                Text('yellowHollowS  width:45.w'),
                Spacer(),
                ASTag.yellowHollowS(
                  '已付款',
                  width: 45.w,
                ),
              ],
            ),
            Row(
              children: [
                Text('transport'),
                Spacer(),
                ASTag.transport('海运'),
              ],
            ),
          ],
        ));
  }
}
