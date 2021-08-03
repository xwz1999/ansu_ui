import 'package:flutter/material.dart';
import 'package:ansu_ui/pickers/as_two_date_picker.dart';

class RangeDate {
  DateTime? start;
  DateTime end;
  RangeDate({
    this.start,
    required this.end,
  });
}

///一个小时内 则 start 为null
///
///
Future<RangeDate> show2DatePicker(BuildContext context,
    { RangeDate? date}) async {
  return await showModalBottomSheet(
    context: context,
    builder: (context) {
      return AS2DatePicker( date: date);
    },
  );
}
