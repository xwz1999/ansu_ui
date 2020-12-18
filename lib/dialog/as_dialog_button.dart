part of ansu_ui;

class ASDialogButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final bool outline;
  const ASDialogButton(
      {Key key, this.title, this.onPressed, this.outline = false})
      : super(key: key);

  const ASDialogButton.outline({Key key, this.title, this.onPressed})
      : outline = true,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 36.w),
      child: outline
          ? ASLongButton.hollow(
              title: title,
              onPressed: onPressed,
            )
          : ASLongButton.solid(
              title: title,
              onPressed: onPressed,
            ),
    );
  }
}
