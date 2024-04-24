import 'package:flutter/cupertino.dart';
import 'package:kafeel_test/core/utils/constants.dart';

abstract class Styles {
  static const pageHeader = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    fontFamily: kMontserratFont
  );
  static const textStyle12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    fontFamily: kMontserratFont,
    color: Color(0xFF696F79),
  );
  static const textStyle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    fontFamily: kMontserratFont,
    color: Color(0xFF696F79),
  );

  static const textStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontFamily: kMontserratFont,
    color: Color(0xFF333333),
  );

  static const stepperStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    fontFamily: kMontserratFont,
    color: Color(0xFF1DBF73),
  );

  static const stepperDisabledStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    fontFamily: kMontserratFont,
    color: Color(0xFFC3C5C8),
  );

  static const buttonTextStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    fontFamily: kMontserratFont,
    color: Color(0xFFFFFFFF),
  );

  static const navBarEnabledStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    fontFamily: kMontserratFont,
    color: Color(0xFF1DBF73),
  );
}

