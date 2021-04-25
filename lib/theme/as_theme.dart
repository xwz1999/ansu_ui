import 'package:ansu_ui/styles/as_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ASTheme {
  static init() {
    SystemChrome.setSystemUIOverlayStyle(defaultSystemStyle);
  }

  static SystemUiOverlayStyle get defaultSystemStyle => SystemUiOverlayStyle(
        systemNavigationBarColor: kBackgroundColor,
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light,
      );

  static SystemUiOverlayStyle get yellow =>
      defaultSystemStyle.copyWith(systemNavigationBarColor: kPrimaryColor);

  static ThemeData get lightTheme =>
      ThemeData(primarySwatch: Colors.yellow).copyWith(
        textTheme: ThemeData.light().textTheme.apply(
              displayColor: Color(0xFF333333),
              bodyColor: Color(0xFF333333),
            ),
        inputDecorationTheme: InputDecorationTheme(),
        primaryColor: kPrimaryColor,
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(kPrimaryColor),
            overlayColor:
                MaterialStateProperty.all(kPrimaryColor.withOpacity(0.2)),
            padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(horizontal: 20.w),
            ),
            textStyle: MaterialStateProperty.all(TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            )),
          ),
        ),
        appBarTheme: AppBarTheme(
          brightness: Brightness.light,
          backgroundColor: kForegroundColor,
          elevation: 0,
          centerTitle: true,
          textTheme: TextTheme(
            headline6: TextStyle(
              color: kTextColor,
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
}
