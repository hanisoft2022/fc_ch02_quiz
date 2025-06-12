import 'package:flutter/material.dart';

extension MediaQueryExtension on BuildContext {
  double get bottomInset => MediaQuery.of(this).viewPadding.bottom;
}
