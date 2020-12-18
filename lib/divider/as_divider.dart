part of ansu_ui;

///安速水平分割线
class ASDivider extends StatelessWidget {
  final Color color;
  final double height;
  final double thickness;
  final double indent;
  final double endIndent;
  ASDivider({
    Key key,
    this.indent,
    this.endIndent,
    this.color = const Color(0xFFE9E9E9),
    this.height,
    this.thickness,
  }) : super(key: key);

  double get _innerHeight => height ?? 1.w;
  double get _innerThickness => thickness ?? 1.w;
  @override
  Widget build(BuildContext context) {
    return Divider(
      color: color,
      height: _innerHeight,
      thickness: _innerThickness,
      indent: indent,
      endIndent: endIndent,
    );
  }
}

///安速 垂直分割线
class ASVDivider extends StatelessWidget {
  final Color color;
  final double width;
  final double thickness;
  final double indent;
  final double endIndent;
  ASVDivider({
    Key key,
    this.indent,
    this.endIndent,
    this.color = const Color(0xFFE9E9E9),
    this.width,
    this.thickness,
  }) : super(key: key);

  double get _innerWidth => width ?? 1.w;
  double get _innerThickness => thickness ?? 1.w;

  @override
  Widget build(BuildContext context) {
    return VerticalDivider(
      color: color,
      width: _innerWidth,
      thickness: _innerThickness,
      indent: indent,
      endIndent: endIndent,
    );
  }
}
