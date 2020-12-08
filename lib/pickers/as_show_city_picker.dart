import 'package:ansu_ui/ansu_ui.dart';
import 'package:ansu_ui/utils/city_util.dart';
import 'package:flutter/material.dart';

Future<CityModel> showCityPicker(BuildContext context,
    {String initCode}) async {
  return await showModalBottomSheet(
    context: context,
    builder: (context) {
      return ASCityPicker();
    },
  );
}
