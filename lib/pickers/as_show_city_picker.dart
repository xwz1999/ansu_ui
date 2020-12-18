part of ansu_ui;

Future<CityModel> showCityPicker(BuildContext context,
    {String initCode}) async {
  return await showModalBottomSheet(
    context: context,
    builder: (context) {
      return ASCityPicker();
    },
  );
}
