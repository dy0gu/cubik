import "package:flutter/material.dart";

/// Extension on [Brightness] to invert it. [Brightness.light] returns [Brightness.dark] and vice versa.
extension BrightnessExtension on Brightness {
  Brightness inverted() {
    return this == Brightness.light ? Brightness.dark : Brightness.light;
  }
}
