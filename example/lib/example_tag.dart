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
            ListTile(
              title: Text('yellowSolid'),
              trailing: ASTag.yellowSolid('带电'),
            ),
            ListTile(
              title: Text('redHollow'),
              trailing: ASTag.redHollow('带磁'),
            ),
            ListTile(
              title: Text('yellowHollow'),
              trailing: ASTag.yellowHollow('选填'),
            ),
            ListTile(
              title: Text('redHollow'),
              subtitle: Text('width:45.w'),
              trailing: ASTag.redHollow(
                '未付款',
                width: 45.w,
              ),
            ),
            ListTile(
              title: Text('yellowHollowS'),
              subtitle: Text('width:45.w'),
              trailing: ASTag.yellowHollowS(
                '已付款',
                width: 45.w,
              ),
            ),
            ListTile(
              title: Text('transport'),
              trailing: ASTag.transport('海运'),
            ),
          ],
        ));
  }
}
