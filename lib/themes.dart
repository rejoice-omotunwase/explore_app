import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: Color.fromRGBO(0, 15, 36, 1),
    elevation: 0,
  ),
  expansionTileTheme: ExpansionTileThemeData(
    collapsedTextColor: Colors.grey[100]!,
    textColor: Colors.grey[100]!,
    iconColor: Colors.grey[100]!,
    collapsedIconColor: Colors.grey[100]!,
  ),
  checkboxTheme: CheckboxThemeData(
    visualDensity: VisualDensity(vertical: -3),
    checkColor: MaterialStateProperty.all(Colors.black87),
    fillColor: MaterialStateProperty.all(Colors.grey[300]),
  ),
  toggleableActiveColor: Colors.grey[200],
  colorScheme: ColorScheme.dark(
      brightness: Brightness.dark,
      background: Color.fromRGBO(0, 15, 36, 1),
      primary: Color.fromRGBO(152, 162, 179, 0.2),
      onPrimary: Colors.grey[200]!, //For the appBar Text
      secondary: Colors.grey[400]!,
      onSecondary: Colors.grey[400]! //For the country-page values
      ),
);

ThemeData lightTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    elevation: 0,
  ),
  expansionTileTheme: ExpansionTileThemeData(
    collapsedTextColor: Color.fromRGBO(28, 25, 23, 1),
    textColor: Color.fromRGBO(28, 25, 23, 1),
    iconColor: Color.fromRGBO(28, 25, 23, 1),
    collapsedIconColor: Colors.grey[600],
  ),
  checkboxTheme: CheckboxThemeData(
    visualDensity: VisualDensity(vertical: -3),
    checkColor: MaterialStateProperty.all(Colors.grey[300]),
    fillColor: MaterialStateProperty.all(Colors.black87),
  ),
  toggleableActiveColor: Colors.black87,
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    brightness: Brightness.light,
    background: Color.fromRGBO(255, 255, 255, 1),
    primary: Colors.grey[100]!,
    onPrimary: Color.fromRGBO(0, 22, 55, 1),
    secondary: Color.fromRGBO(28, 25, 23, 1),
    onSecondary: Color.fromRGBO(28, 25, 23, 1),
  ),
);

class ThemeProvider extends ChangeNotifier {
  ThemeData? themeData = lightTheme;

  void toggleTheme() {
    if (themeData == lightTheme) {
      themeData = darkTheme;
    } else {
      themeData = lightTheme;
    }
    notifyListeners();
  }
}
