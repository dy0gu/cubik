import "package:flutter/material.dart";

/// Extension on [Brightness] to invert it. [Brightness.light] returns [Brightness.dark] and vice versa.
extension BrightnessExtension on Brightness {
  Brightness inverted() {
    return this == Brightness.light ? Brightness.dark : Brightness.light;
  }
}

/// Extension on [ThemeMode] to convert it to [Brightness].
///
/// Context is required to check if [ThemeMode] is [ThemeMode.dark] or
/// [ThemeMode.light] when [ThemeMode.system] is selected.
extension ThemeModeExtension on ThemeMode {
  Brightness toBrightness(BuildContext context) {
    if (this == ThemeMode.system) {
      return MediaQuery.maybeOf(context)?.platformBrightness ??
          Brightness.light;
    } else if (this == ThemeMode.light) {
      return Brightness.light;
    } else {
      return Brightness.dark;
    }
  }
}
