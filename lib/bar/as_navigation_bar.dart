part of ansu_ui;

class ASNavigationBar extends StatefulWidget {
  final List<BottomNavigationBarItem> items;
  final TabController controller;
  ASNavigationBar({Key key, @required this.items, this.controller})
      : super(key: key);

  @override
  _ASNavigationBarState createState() => _ASNavigationBarState();
}

class _ASNavigationBarState extends State<ASNavigationBar> {
  int _currentIndex = 0;
  updateBar() => setState(() => _currentIndex = widget.controller.index);

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(updateBar);
  }

  @override
  void dispose() {
    widget.controller.removeListener(updateBar);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: widget.items,
      elevation: 0,
      backgroundColor: kBackgroundColor,
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
      selectedLabelStyle: TextStyle(fontSize: 12.sp),
      unselectedLabelStyle: TextStyle(fontSize: 12.sp),
      selectedItemColor: kTextColor,
      unselectedItemColor: kTextSubColor,
      onTap: (index) =>
          widget.controller.animateTo(index, curve: Curves.easeInOutCubic),
    );
  }
}
