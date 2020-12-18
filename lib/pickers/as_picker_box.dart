part of ansu_ui;

class ASPickerBox extends StatelessWidget {
  final VoidCallback onPressed;
  final String confirmString;
  final String title;
  final Widget child;

  const ASPickerBox(
      {Key key,
      this.onPressed,
      this.confirmString = '完成',
      this.title,
      @required this.child})
      : super(key: key);

  _buildButton({
    @required String title,
    @required VoidCallback onPressed,
  }) {
    return TextButton(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(kPrimaryColor),
        overlayColor: MaterialStateProperty.all(kPrimaryColor.withOpacity(0.2)),
        padding:
            MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 20.w)),
        textStyle: MaterialStateProperty.all(TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
        )),
      ),
      onPressed: onPressed,
      child: Text(title),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: kForegroundColor,
      child: SizedBox(
        height: 260.w,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 48.w,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _buildButton(
                      title: '取消',
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  Expanded(
                    child: Center(
                      child: Text(
                        title ?? '',
                        style: TextStyle(
                          color: kTextColor,
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                  _buildButton(title: confirmString, onPressed: onPressed),
                ],
              ),
            ),
            ASDivider(),
            Expanded(child: child),
          ],
        ),
      ),
    );
  }
}
