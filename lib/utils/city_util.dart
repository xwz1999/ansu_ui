import 'package:ansu_ui/utils/cities.dart';

class CityUtil {
  static List<ProvinceModel> get provinceModel {
    return provincesData.entries
        .map((e) => ProvinceModel(
              code: e.key,
              name: e.value,
            ))
        .toList();
  }

  static List<CityModel> getCityModelByCode(String code) {
    Map<String, dynamic> temp = citiesData[code];
    if (temp?.entries?.isEmpty ?? true)
      return [
        CityModel(
          code: code,
          name: provincesData[code] ?? citiesData[code] ?? '',
        )
      ];
    return temp.entries
        .map((e) => CityModel(
              code: e.key,
              name: e.value['name'],
            ))
        .toList();
  }
}

class ProvinceModel {
  String code;
  String name;
  ProvinceModel({
    this.code,
    this.name,
  });
}

class CityModel {
  String code;
  String name;
  CityModel({
    this.code,
    this.name,
  });
}
