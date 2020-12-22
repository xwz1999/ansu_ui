import 'package:flutter/material.dart';
import 'package:ansu_ui/pickers/as_two_date_picker.dart';

class RangeDate {
  DateTime start;
  DateTime end;
  RangeDate({
    this.start,
    this.end,
  });
}

///返回值为`bool`且为`true`时,为一小时内
///
///否则返回`RangeDate`
Future<dynamic> show2DatePicker(BuildContext context,
    {bool isAnHour, RangeDate date}) async {
  return await showModalBottomSheet(
    context: context,
    builder: (context) {
      return AS2DatePicker(isAnHour: isAnHour, date: date);
    },
  );
}
