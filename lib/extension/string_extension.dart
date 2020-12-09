extension PhoneExt on String {
  String get phone {
    ///电话号码加分隔线
    return (this.substring(0, 3) +
        '-' +
        this.substring(3, 7) +
        '-' +
        this.substring(7, 11));
  }
}
