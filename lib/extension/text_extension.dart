part of ansu_ui;

extension TextExtension on Text {
  Text get bold => Text(
        this.data,
        style: this.style?.bold ?? TextStyle().bold,
      );

  Text size(double size) {
    return Text(
      this.data,
      style: this.style?.size(size) ?? TextStyle().size(size),
    );
  }

  Text color(Color color) {
    return Text(
      this.data,
      style: this.style?.colorX(color) ?? TextStyle().colorX(color),
    );
  }

  Text get white =>
      Text(this.data, style: this.style?.white ?? TextStyle().white);

  Text get black =>
      Text(this.data, style: this.style?.black ?? TextStyle().black);

  Text get black65 =>
      Text(this.data, style: this.style?.black65 ?? TextStyle().black65);

  Text lines(int maxLines) {
    return Text(
      this.data,
      maxLines: maxLines,
    );
  }

  Text over(TextOverflow textOverflow) {
    return Text(
      this.data,
      overflow: textOverflow,
    );
  }

  Text get light => Text(
        this.data,
        style: this.style?.light ?? TextStyle().light,
      );

  Text copyWith({
    FontWeight fontWeight,
    Color color,
    double fontSize,
  }) {
    return Text(this.data,
        style: this.style.copyWith(
              fontWeight: fontWeight,
              color: color,
              fontSize: fontSize,
            ));
  }
}
