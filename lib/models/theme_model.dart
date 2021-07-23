import 'package:flutter/material.dart';

import 'package:codekeeper/enums/theme_type.dart';
import 'package:codekeeper/utils/theme.dart';

class ThemeModel extends ChangeNotifier {
  ThemeData currentTheme = lightTheme;
  ThemeType _themeType = ThemeType.Light;

  toggleTheme() {
    if (_themeType == ThemeType.Dark) {
      currentTheme = lightTheme;
      _themeType = ThemeType.Light;
      return notifyListeners();
    }
    if (_themeType == ThemeType.Light) {
      currentTheme = darkTheme;
      _themeType = ThemeType.Dark;
      return notifyListeners();
    }
  }

  ThemeType get themeType {
    return _themeType;
  }
}
