part of ansu_ui;

class AS2DatePicker extends StatefulWidget {
  AS2DatePicker({Key key}) : super(key: key);

  @override
  _AS2DatePickerState createState() => _AS2DatePickerState();
}

class _AS2DatePickerState extends State<AS2DatePicker> {
  int _selectedDay = 0;

  DateTime get now => DateTime.now();
  DateTime _selectedDate;
  PageController _pageController;

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
      onPressed: () {
        _pageController?.animateToPage(
          index,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOutCubic,
        );
        setState(() => _selectedDay = index);
      },
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
        child: Icon(
          Icons.check,
          size: 12.w,
          color: kLightTextColor,
        ),
      );
  Widget _renderButton(String title, VoidCallback onPressed, bool selected) {
    return MaterialButton(
      onPressed: onPressed,
      height: 46.w,
      shape: RoundedRectangleBorder(borderRadius: 23.radius),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      child: Row(
        children: [
          30.wb,
          AnimatedDefaultTextStyle(
            child: title.text,
            style: TextStyle().size(16).copyWith(
                  color: selected ? kSecondaryColor : kTextColor,
                ),
            duration: Duration(milliseconds: 300),
          ),
          Spacer(),
          AnimatedOpacity(
            opacity: selected ? 1 : 0,
            duration: Duration(milliseconds: 300),
            child: _renderCheckBox,
          ),
          30.wb,
        ],
      ),
    );
  }

  Widget _buildTodayList() {
    int startHour = now.hour;
    int hourCount = 24 - startHour;
    return ListView.builder(
      padding: 8.edge,
      itemBuilder: (context, index) {
        bool sameItem = now.day == _selectedDate.day &&
            _selectedDate.hour == startHour + index;
        if (index == 0)
          return _renderButton(
            '一小时内',
            () => setState(() => _selectedDate = now),
            sameItem,
          );
        return _renderButton(
          '${startHour + index}:00-${startHour + index + 1}:00',
          () => setState(() => _selectedDate = DateTime(
                now.year,
                now.month,
                now.day,
                startHour + index,
              )),
          sameItem,
        );
      },
      itemCount: hourCount,
    );
  }

  Widget _buildOtherDayList(int offsetDay) {
    return ListView.builder(
      padding: 8.edge,
      itemBuilder: (context, index) {
        bool sameItem = (now.day + offsetDay) == _selectedDate.day &&
            _selectedDate.hour == index;
        return _renderButton(
          '$index\:00-${index + 1}:00',
          () => setState(() => _selectedDate = DateTime(
                now.year,
                now.month,
                now.day + offsetDay,
                index,
              )),
          sameItem,
        );
      },
      itemCount: 24,
    );
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _selectedDate = now;
  }

  @override
  void dispose() {
    _pageController?.dispose();
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
                Expanded(
                  child: PageView(
                    scrollDirection: Axis.vertical,
                    children: [
                      _buildTodayList(),
                      _buildOtherDayList(1),
                      _buildOtherDayList(2),
                    ],
                    controller: _pageController,
                  ),
                ),
              ],
            ).expanded,
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 24.w,
                vertical: 18.w,
              ),
              child: ASLongButton.solid(
                title: '确认',
                onPressed: () {
                  Navigator.pop(
                      context,
                      RangeDate(
                        start: _selectedDate,
                        end: _selectedDate.add(Duration(hours: 1)),
                      ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
