import 'package:ansu_ui/ansu_ui.dart';
import 'package:flutter/material.dart';

class ColorObject {
  Color color;
  String name;
  String codeName;
  ColorObject({
    this.color,
    this.name,
    this.codeName,
  });
}

List<ColorObject> colorObjects = [
  ColorObject(
    color: Color(0xFF333333),
    name: '主要暗色',
    codeName: 'kDarkColor',
  ),
  ColorObject(
    color: kDarkColor,
    name: '文本默认颜色',
    codeName: 'kTextColor',
  ),
  ColorObject(
    color: Color.fromRGBO(0, 0, 0, 0.65),
    name: '次文本颜色',
    codeName: 'kTextSubColor',
  ),
  ColorObject(
    color: Color(0xFFF6B72D),
    name: '主题色',
    codeName: 'kPrimaryColor',
  ),
  ColorObject(
    color: Color(0xFFFFFFFF),
    name: '前景色',
    codeName: 'kForegroundColor',
  ),
  ColorObject(
    color: Color(0xFFF6F6F6),
    name: '背景色',
    codeName: 'kBackgroundColor',
  ),
];
