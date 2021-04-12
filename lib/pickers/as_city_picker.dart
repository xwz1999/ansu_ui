import 'package:ansu_ui/utils/city_util.dart';
import 'package:ansu_ui/pickers/as_picker_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ASCityPicker extends StatefulWidget {
  ASCityPicker({Key? key}) : super(key: key);

  @override
  _ASCityPickerState createState() => _ASCityPickerState();
}

class _ASCityPickerState extends State<ASCityPicker> {
  double getFontSize(String? text) {
    double fontSize = 13.sp;
    int len = text?.length ?? 0;
    if (len >= 1 && len <= 3) {
      fontSize = 20.w;
    } else if (len > 3 && len <= 4) {
      fontSize = 18.sp;
    } else if (len > 4 && len <= 5) {
      fontSize = 16.sp;
    } else if (len > 5 && len <= 6) {
      fontSize = 14.sp;
    } else if (len > 6 && len <= 9) {
      fontSize = 12.sp;
    } else if (len > 9) {
      fontSize = 8.sp;
    }
    return fontSize;
  }

  late ProvinceModel _selectedProvince;
  late CityModel _selectedCity;
  CityModel? _selectedDistrict;

  FixedExtentScrollController _cityController = FixedExtentScrollController();
  FixedExtentScrollController _districtController =
      FixedExtentScrollController();
  @override
  void initState() {
    super.initState();
    _selectedProvince = CityUtil.provinceModel.first;
    _selectedCity = CityUtil.getCityModelByCode(_selectedProvince.code).first;
    _selectedDistrict = CityUtil.getCityModelByCode(_selectedCity.code).first;
  }

  @override
  void dispose() {
    _cityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ASPickerBox(
      onPressed: () {
        Navigator.pop(context, _selectedDistrict);
      },
      child: Row(
        children: [
          Expanded(
            child: CupertinoPicker(
              offAxisFraction: -0.6,
              itemExtent: 30,
              useMagnifier: true,
              magnification: 1.1,
              onSelectedItemChanged: (value) {
                _cityController.animateToItem(
                  0,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.ease,
                );
                _districtController.animateToItem(
                  0,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.ease,
                );
                setState(() {
                  _selectedProvince = CityUtil.provinceModel[value];
                  _selectedCity =
                      CityUtil.getCityModelByCode(_selectedProvince.code).first;
                  _selectedDistrict =
                      CityUtil.getCityModelByCode(_selectedCity.code).first;
                });
              },
              children: CityUtil.provinceModel
                  .map((e) => Center(
                          child: Text(
                        e.name!,
                        style: TextStyle(
                          fontSize: getFontSize(e.name),
                        ),
                      )))
                  .toList(),
              looping: true,
            ),
          ),
          Expanded(
            child: CupertinoPicker(
              looping:
                  CityUtil.getCityModelByCode(_selectedProvince.code).length >
                      1,
              scrollController: _cityController,
              itemExtent: 30,
              useMagnifier: true,
              magnification: 1.1,
              onSelectedItemChanged: (value) {
                _districtController.animateToItem(
                  0,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.ease,
                );
                setState(() {
                  _selectedCity = CityUtil.getCityModelByCode(
                      _selectedProvince.code)[value];
                  _selectedDistrict =
                      CityUtil.getCityModelByCode(_selectedCity.code).first;
                });
              },
              children: CityUtil.getCityModelByCode(_selectedProvince.code)
                  .map((e) => Center(
                          child: Text(
                        e.name!,
                        style: TextStyle(
                          fontSize: getFontSize(e.name),
                        ),
                      )))
                  .toList(),
            ),
          ),
          Expanded(
            child: CupertinoPicker(
              offAxisFraction: 0.6,
              looping:
                  CityUtil.getCityModelByCode(_selectedCity.code).length > 1,
              itemExtent: 30,
              useMagnifier: true,
              magnification: 1.1,
              scrollController: _districtController,
              onSelectedItemChanged: (value) {
                _selectedDistrict =
                    CityUtil.getCityModelByCode(_selectedCity.code)[value];
              },
              children: CityUtil.getCityModelByCode(_selectedCity.code)
                  .map((e) => Center(
                          child: Text(
                        e.name!,
                        style: TextStyle(
                          fontSize: getFontSize(e.name),
                        ),
                      )))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
