part of ansu_ui;

BottomNavigationBarItem asNavigationItem(
    String path1, String path2, String title) {
  return BottomNavigationBarItem(
    icon: Image.asset(
      path1,
      height: 24.w,
      width: 24.w,
    ),
    activeIcon: Image.asset(
      path2,
      height: 24.w,
      width: 24.w,
    ),
    label: title,
  );
}
