import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

extension MediaQueryExtension on BuildContext {
  double get bottomInset => MediaQuery.of(this).viewPadding.bottom;
}

extension BottomGapExtension on BuildContext {
  double get bottomGapHeight {
    if (kIsWeb) return 24;
    if (bottomInset == 0) return 16;
    return bottomInset;
  }
}
