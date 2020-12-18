part of ansu_ui;

class AS2DatePicker extends StatefulWidget {
  AS2DatePicker({Key key}) : super(key: key);

  @override
  _AS2DatePickerState createState() => _AS2DatePickerState();
}

class _AS2DatePickerState extends State<AS2DatePicker>
    with TickerProviderStateMixin {
  int _selectedDay = 0;

  DateTime get now => DateTime.now();
  TabController _tabController;

  DateTimeRange get singleHour => DateTimeRange(
        start: now,
        end: now.add(Duration(hours: 1)),
      );
  Widget _buildDayButton(int index, String title) {
    bool sameDay = _selectedDay == index;
    return MaterialButton(
      elevation: 0,
      disabledElevation: 0,
      focusElevation: 0,
      highlightElevation: 0,
      hoverElevation: 0,
      color: sameDay ? kForegroundColor : kForegroundColor.withOpacity(0),
      onPressed: () => setState(() => _selectedDay = index),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      height: 70.w,
      child: title.text.black
          .size(16)
          .copyWith(fontWeight: sameDay ? FontWeight.bold : FontWeight.normal),
    );
  }

  Widget get _renderCheckBox => Container(
        height: 14.w,
        width: 14.w,
        decoration: BoxDecoration(
          color: kSecondaryColor,
          borderRadius: 7.radius,
        ),
        child: Icon(Icons.check, size: 12.w),
      );

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 340.w,
      child: Material(
        color: kForegroundColor,
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 112.w,
                  child: Material(
                    color: Color(0xFFF2F2F2),
                    child: ListView(
                      children: [
                        _buildDayButton(0, '今天'),
                        _buildDayButton(1, '明天'),
                        _buildDayButton(2, '后天'),
                      ],
                    ),
                  ),
                ),
                Expanded(child: SizedBox()),
              ],
            ).expanded,
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 24.w,
                vertical: 18.w,
              ),
              child: ASLongButton.solid(
                title: '确认',
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
