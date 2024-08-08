// // ignore_for_file: file_names, unnecessary_getters_setters

// import 'package:flutter/material.dart';

// class ModeProvider with ChangeNotifier {
//   bool _lightModeEnable = true;

//   bool get lightModeEnable => _lightModeEnable;

//   set lightModeEnable(bool value) {
//     _lightModeEnable = value;
//   }

//   //
//   chaneMode() {
//     if (_lightModeEnable == true) {
//       _lightModeEnable = false;
//       notifyListeners();
//     } else if (_lightModeEnable == false) {
//       _lightModeEnable = true;
//       notifyListeners();
//     }
//   }
// }
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ModeProvider with ChangeNotifier {
  bool _lightModeEnable = true;

  bool get lightModeEnable => _lightModeEnable;

  set lightModeEnable(bool value) {
    _lightModeEnable = value;
    _saveToPrefs();
    notifyListeners();
  }

  ModeProvider() {
    _loadFromPrefs();
  }

  void chaneMode() {
    _lightModeEnable = !_lightModeEnable;
    _saveToPrefs();
    notifyListeners();
  }

  // تحميل الحالة من SharedPreferences
  _loadFromPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _lightModeEnable = prefs.getBool('lightModeEnable') ?? true;
    notifyListeners();
  }

  // حفظ الحالة في SharedPreferences
  _saveToPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('lightModeEnable', _lightModeEnable);
  }
}
