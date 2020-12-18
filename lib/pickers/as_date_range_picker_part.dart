part of ansu_ui;

class RangeDate {
  DateTime start;
  DateTime end;
  RangeDate({
    this.start,
    this.end,
  });
}

Future<RangeDate> show2DatePicker(BuildContext context) async {
  return await showModalBottomSheet(
    context: context,
    builder: (context) {
      return AS2DatePicker();
    },
  );
}
