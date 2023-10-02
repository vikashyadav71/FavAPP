import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
class ThemeChanger with ChangeNotifier{
var _theme=ThemeMode.dark;
ThemeMode  get theme =>_theme;
void setTheme(value){
  _theme=value;
  notifyListeners();
}

}