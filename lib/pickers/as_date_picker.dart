import 'package:ansu_ui/pickers/as_picker_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//时间选择器内部实现
class _ASDatePickerWidget extends StatefulWidget {
  _ASDatePickerWidget({Key? key}) : super(key: key);

  @override
  _ASDatePickerWidgetState createState() => _ASDatePickerWidgetState();
}

class _ASDatePickerWidgetState extends State<_ASDatePickerWidget> {
  DateTime? _dateTime;
  @override
  void initState() {
    super.initState();
    _dateTime = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return ASPickerBox(
      title: '日期',
      onPressed: () {
        Navigator.pop(context, _dateTime);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w),
        child: CupertinoDatePicker(
          onDateTimeChanged: (dateTime) {
            _dateTime = dateTime;
          },
          mode: CupertinoDatePickerMode.date,
        ),
      ),
    );
  }
}

///## 时间选择器
///
///``` dart
/// ASButton(
///   title: 'DatePicker',
///   onPressed: () async {
///     DateTime date = await asDatePicker(context);
///     Get.snackbar(date.toString(), 'MESSAGE');
///   },
/// )
///```
///
///返回一个`Future<DateTime>` 类型的时间
///
///内部使用Navigator实现
///```dart
///Navigator.pop(context,dateTime)
///```
Future<DateTime?> asDatePicker(BuildContext context) async {
  return await showModalBottomSheet(
    context: context,
    builder: (context) {
      return _ASDatePickerWidget();
    },
  );
}
