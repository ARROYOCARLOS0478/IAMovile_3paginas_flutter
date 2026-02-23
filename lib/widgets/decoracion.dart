
import 'package:flutter/material.dart';

BoxDecoration decoracionGradient(List<Color> colors) {
  return BoxDecoration(
    gradient: LinearGradient(
      colors: colors,
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  );
}
