part of ansu_ui;

extension SeparateExt on List<Widget> {
  List<Widget> sepWidget({Widget separate}) {
    return List.generate(this.length * 2 - 1, (index) {
      if (index.isEven)
        return this[index ~/ 2];
      else
        return separate ?? 10.wb;
    });
  }

}
