part of ansu_ui;

class ASEditTile extends StatefulWidget {
  final Widget title;
  final FocusNode node;
  final String hintText;
  final TextEditingController controller;
  ASEditTile({
    Key key,
    this.title,
    this.node,
    this.hintText,
    this.controller,
  }) : super(key: key);

  @override
  _ASEditTileState createState() => _ASEditTileState();
}

class _ASEditTileState extends State<ASEditTile> {
  FocusNode _node;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
            InkWell(
              child: DefaultTextStyle(
                style: TextStyle(
                  color: Colors.black.withOpacity(0.65),
                  fontSize: 14.sp,
                ),
                child: widget.title ?? Text(''),
              ),
            ),
            Expanded(
              child: TextField(
                focusNode: widget.node ?? _node,
                controller: widget.controller,
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
                  hintText: widget.hintText,
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
