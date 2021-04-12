import 'package:ansu_ui/utils/city_util.dart';
import 'package:flutter/material.dart';
import 'package:ansu_ui/pickers/as_city_picker.dart';

Future<CityModel?> showCityPicker(BuildContext context,
    {String? initCode}) async {
  return await showModalBottomSheet(
    context: context,
    builder: (context) {
      return ASCityPicker();
    },
  );
}
