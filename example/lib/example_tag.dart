import 'package:ansu_ui/scaffold/as_scaffold.dart';
import 'package:ansu_ui/tag/as_tag.dart';
import 'package:flutter/material.dart';

class ExampleTag extends StatefulWidget {
  ExampleTag({Key key}) : super(key: key);

  @override
  _ExampaleTagState createState() => _ExampaleTagState();
}

class _ExampaleTagState extends State<ExampleTag> {
  @override
  Widget build(BuildContext context) {
    return ASScaffold(title: 'Tag',
    body: Column(
      children: [
        Row(
          children: [
            ASTag.dangerousItem('带电'),
          ],
        ),
      ],
    )
    );
  }
}