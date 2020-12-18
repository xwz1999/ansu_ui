part of ansu_ui;

class ASOptionTileItem extends StatelessWidget {
  final Widget leading;
  final Widget title;
  final onPressed;
  const ASOptionTileItem({
    Key key,
    this.leading,
    this.title,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(5.w),
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: 46.w),
        child: Row(
          children: [
            14.wb,
            leading ?? SizedBox(),
            leading != null ? 8.wb : 0.wb,
            Expanded(
              child: DefaultTextStyle(
                style: TextStyle(
                  color: Colors.black.withOpacity(0.65),
                  fontSize: 14.sp,
                ),
                child: title,
              ),
            ),
            14.wb,
            Icon(
              CupertinoIcons.chevron_forward,
              size: 16.w,
            ),
            14.wb,
          ],
        ),
      ),
    );
  }
}
