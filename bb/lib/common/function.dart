import 'dart:ui';

import 'package:basic_utils/basic_utils.dart';

class Function {

  static final mainColor = Color(0xFF4472B4);

  static String setPrice(String digits) {

    if (2.0 > digits.length / 3 && digits.length / 3 > 1.0) { // 1~100,000 자리
      digits = StringUtils.addCharAtPosition(digits, ",", digits.length - 3);
    }
    else if (3.1 > digits.length / 3 &&
        digits.length / 3 > 1.9) { // 100,000 ~ 100,000,000자리
      digits = StringUtils.addCharAtPosition(digits, ",", digits.length - 3);
      if (digits.length > 7)
        digits = StringUtils.addCharAtPosition(digits, ",", digits.length - 7);
    }

    return digits+'원';
  }
}
