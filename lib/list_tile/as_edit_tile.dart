import 'package:flutter/material.dart';
import 'package:ansu_ui/ansu_ui.dart';

class ASEditTile extends StatefulWidget {
  final Widget title;
  final FocusNode node;
  ASEditTile({Key key, this.title, this.node}) : super(key: key);

  @override
  _ASEditTileState createState() => _ASEditTileState();
}

class _ASEditTileState extends State<ASEditTile> {
  FocusNode _node;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (widget.node != null) {
          widget.node?.requestFocus();
        } else {
          _node?.requestFocus();
        }
      },
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: 46.w),
        child: Row(
          children: [
            10.wb,
            DefaultTextStyle(
              style: TextStyle(
                color: Colors.black.withOpacity(0.65),
                fontSize: 14.sp,
              ),
              child: widget.title ?? Text(''),
            ),
            Expanded(
              child: TextField(
                focusNode: widget.node ?? _node,
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: kTextColor,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  isDense: true,
                  contentPadding: EdgeInsets.zero,
                  hintText: 'awd',
                  hintStyle: TextStyle(
                    color: kTextSubColor,
                    fontSize: 14.sp,
                  ),
                ),
              ),
            ),
            10.wb,
          ],
        ),
      ),
    );
  }
}
