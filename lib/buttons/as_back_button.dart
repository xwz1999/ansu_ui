part of ansu_ui;

///安速返回按钮
///
///ASBackButton 黑色返回按钮
///
///ASBackButton.white 白色返回按钮
class ASBackButton extends StatelessWidget {
  final Color color;
  const ASBackButton({Key key, this.color = kDarkColor}) : super(key: key);

  const ASBackButton.white({Key key})
      : color = kForegroundColor,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator.canPop(context)
        ? IconButton(
            icon: Icon(
              CupertinoIcons.chevron_back,
              size: 24,
              color: color,
            ),
            onPressed: () => Navigator.pop(context),
          )
        : SizedBox();
  }
}
