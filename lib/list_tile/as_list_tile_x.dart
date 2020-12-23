import 'package:flutter/material.dart';
import 'package:ansu_ui/extension/text_style_extension.dart';
import 'package:ansu_ui/extension/num_extension.dart';

class ASListTileX extends StatelessWidget {
  final Widget title;
  final Widget suffix;
  final double height;
  const ASListTileX({
    Key key,
    @required this.title,
    this.suffix,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        10.wb,
        DefaultTextStyle(
          style: TextStyle().black65.size(14),
          child: title,
        ),
        Spacer(),
        (height ?? 46).hb,
        suffix ?? SizedBox(),
      ],
    );
  }
}
