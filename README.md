# ansu_ui 安速物流移动组件

## dep 依赖

![flutter_screenutil](https://img.shields.io/badge/flutter__screenutil-3.2.0-brightgreen)

## Getting Started

### 生成关键代码

```bash
cd example
flutter pub run grinder update-code-segments
```

### 安装ansu_ui

#### Android

Change the minimum Android sdk version to 21 (or higher) in your `android/app/build.gradle` file.

```gradle
minSdkVersion 21
```

## ROAD MAP

* [ ] Auto Code generate
  * [x] Scaffold
  * [x] Button
  * [ ] Extension
    * [x] num ext
    * [x] string ext
    * [ ] widget ext
    * [ ] image ext
    * [ ] list ext
    * [ ] text ext
    * [ ] text style ext
  * [ ] Badge
  * [ ] Bars
    * [x] TabBar
    * [ ] NavigationBar
  * [ ] CheckBox
  * [ ] Dialog
  * [ ] Divider
  * [ ] Drawer
  * [ ] ListTile
  * [ ] Pickers
    * [x] numeric Picker
  * [ ] PopUpMenu
  * [ ] Refresh
  * [x] Tag
  * [ ] TextField
  * [ ] Toast
  * [ ] Utils

## 贡献

[@laiiihz](http://192.168.2.201:8099/u/laiiihz)
[@zhang](http://192.168.2.201:8099/u/zhangmeng)

-----

### 组件命名

* 文件命名规则 `as_***`,例如 `as_button`
* 类名命名规则 `AS***`,例如`ASButton`
