import 'package:ansu_ui/ansu_ui.dart';

extension SeparateExt on List {
  List sep({dynamic separate}) {
    return List.generate(this.length * 2 - 1, (index) {
      if (index.isEven)
        return this[index ~/ 2];
      else
        return separate ?? 10.wb;
    });
  }
}
