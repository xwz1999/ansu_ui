part of ansu_ui;

///主要暗色
const Color kDarkColor = Color(0xFF333333);

///次暗色
const Color kSubDarkColor = Color(0x73000000);

///文本默认颜色
const Color kTextColor = kDarkColor;

///次文本颜色
const Color kTextSubColor = Color(0xFF999999);

///主题色
const Color kPrimaryColor = Color(0xFFF6B72D);

///前景色
const Color kForegroundColor = Color(0xFFFFFFFF);

///背景色
const Color kBackgroundColor = Color(0xFFF6F6F6);

///危险色
const Color kDangerColor = Color(0xFFE50112);

///暗主题色
const Color kDarkPrimaryColor = Color(0xFFF69A2D);

///亮主题色
const Color kLightPrimaryColor = Color(0xFFFFB600);

///文本亮颜色
const Color kLightTextColor = Color(0xD9FFFFFF);

///次主题色
const Color kSecondaryColor = Color(0xFFE50112);

class ColorTool {
  static Color getSplashColor(Color color) {
    int r = color.red;
    int g = color.green;
    int b = color.blue;

    return Color.fromRGBO(
      colorM50Less0(r),
      colorM50Less0(g),
      colorM50Less0(b),
      1,
    );
  }

  static int colorM50Less0(int light) {
    return (light - 50) < 0 ? 0 : (light - 50);
  }
}
