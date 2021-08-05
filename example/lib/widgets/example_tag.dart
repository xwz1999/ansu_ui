import 'package:ansu_ui/ansu_ui.dart';
import 'package:example/codeviewer/code_segments.dart';
import 'package:example/component/example_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class ExampleTag extends StatefulWidget {
  ExampleTag({Key key}) : super(key: key);

  @override
  _ExampaleTagState createState() => _ExampaleTagState();
}

class _ExampaleTagState extends State<ExampleTag> {
  bool _checked = false;
  @override
  Widget build(BuildContext context) {
    return ExampleScaffold(
      title: 'ASTag',
      text: (context) => CodeSegments.tag(context),
      children: [
        // BEGIN tag
        ListTile(
          title: Text('yellowSolid'),
          trailing: ASTag.yellowSolid(
            '带电',
            width: 36.w,
          ),
        ),
        ListTile(
          title: Text('redHollow'),
          trailing: ASTag.redHollow(
            '带磁',
            width: 36.w,
          ),
        ),
        ListTile(
          title: Text('yellowHollow'),
          trailing: ASTag.yellowHollow(
            '选填',
            width: 36.w,
          ),
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
        ListTile(
          onTap: () => setState(() => _checked = !_checked),
          title: Text('ASCheckTag'),
          trailing: ASCheckTag(
            checked: _checked,
            text: 'TAG'.text.make(),
          ),
        ),
      ],
      // END
    );
  }
}
