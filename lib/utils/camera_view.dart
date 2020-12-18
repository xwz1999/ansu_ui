part of ansu_ui;

class CameraView extends StatefulWidget {
  final File file;
  final String title;
  CameraView({Key key, this.file, this.title}) : super(key: key);

  @override
  _CameraViewState createState() => _CameraViewState();
}

class _CameraViewState extends State<CameraView> {
  _buildButton({String title, Color color = kTextColor, onPressed}) {
    return MaterialButton(
      child: title.text.bold.size(18).copyWith(color: color),
      onPressed: onPressed,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      height: 48.w,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ASScaffold(
      title: widget.title,
      body: Image.file(widget.file, fit: BoxFit.cover),
      bottomNavigationBar: Material(
        color: kForegroundColor,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildButton(
              title: '重拍',
              onPressed: () async {
                File file = await camFile();
                if (file == null) Navigator.pop(context);
                Navigator.pushReplacement(context, PageRouteBuilder(
                  pageBuilder: (context, animation, secondAnimation) {
                    return FadeTransition(
                      opacity: animation,
                      child: CameraView(file: file, title: widget.title),
                    );
                  },
                ));
              },
            ),
            _buildButton(
              title: '删除',
              color: kDangerColor,
              onPressed: () => Navigator.pop(context),
            ),
            _buildButton(
              title: '确认',
              onPressed: () => Navigator.pop(context, widget.file),
            ),
          ].sepWidget(separate: ASDivider()),
        ),
      ),
    );
  }
}
