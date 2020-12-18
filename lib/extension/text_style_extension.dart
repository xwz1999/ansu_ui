part of ansu_ui;

extension TextStyleExtension on TextStyle {
  ///Bold text
  TextStyle get bold => this.copyWith(fontWeight: FontWeight.bold);

  ///size
  TextStyle size(double size) => this.copyWith(fontSize: size.w);

  ///color
  TextStyle colorX(Color color) => this.copyWith(color: color);
  //specific values

  TextStyle get white => this.copyWith(color: kLightTextColor);

  TextStyle get black => this.copyWith(color: kTextColor);

  TextStyle get black65 => this.copyWith(color: kTextSubColor);
}
