import 'package:ansu_ui/toast/as_toast.dart';
import 'package:ansu_ui/utils/match_text.dart';
import 'package:flutter/material.dart';

extension PhoneExt on String {
  List get _parsePhone {
    if (this.length < 11)
      return [];
    else
      return [
        this.substring(0, 3),
        this.substring(3, 7),
        this.substring(7, 11),
      ];
  }

  bool get _validPhone => _parsePhone.isNotEmpty;

  ///电话号码加分隔线
  ///
  ///example 18888888888 => 188-8888-8888
  String get phone {
    if (!_validPhone)
      return this;
    else
      return '${_parsePhone[0]}-${_parsePhone[1]}-${_parsePhone[2]}';
  }

  String get securePhone {
    if (!_validPhone)
      return this;
    else
      return '${_parsePhone[0]}****${_parsePhone[2]}';
  }

  get toast {
    ASToast.show(this);
  }

  MatchText matchStr(String match, {TextStyle? style}) {
    return MatchText(matchText: match, text: this);
  }
}
