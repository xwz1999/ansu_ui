part of ansu_ui;

///获取相机文件
Future<File> camFile({maxHeight = 3000, maxWidth = 3000}) async {
  var pickedFile = await ImagePicker().getImage(
    source: ImageSource.camera,
    maxHeight: maxHeight,
    maxWidth: maxWidth,
  );
  if (pickedFile == null) return null;
  return File(pickedFile.path);
}
