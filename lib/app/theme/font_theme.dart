import 'package:flutter/cupertino.dart';

class FontTheme {
  static TextStyle base = const TextStyle(fontFamily: 'PlusJakartaSans');

  static TextStyle extraLight = base.copyWith(fontWeight: FontWeight.w200);
  static TextStyle extraLightItalic =
      extraLight.copyWith(fontStyle: FontStyle.italic);

  static TextStyle light = base.copyWith(fontWeight: FontWeight.w300);
  static TextStyle lightItalic = light.copyWith(fontStyle: FontStyle.italic);

  static TextStyle regular = base.copyWith(fontWeight: FontWeight.w400);
  static TextStyle regularItalic =
      regular.copyWith(fontStyle: FontStyle.italic);

  static TextStyle medium = base.copyWith(fontWeight: FontWeight.w500);
  static TextStyle mediumItalic = medium.copyWith(fontStyle: FontStyle.italic);

  static TextStyle semiBold = base.copyWith(fontWeight: FontWeight.w600);
  static TextStyle semiBoldItalic =
      semiBold.copyWith(fontStyle: FontStyle.italic);

  static TextStyle bold = base.copyWith(fontWeight: FontWeight.w700);
  static TextStyle boldItalic = bold.copyWith(fontStyle: FontStyle.italic);

  static TextStyle extraBold = base.copyWith(fontWeight: FontWeight.w800);
  static TextStyle extraBoldItalic =
      extraBold.copyWith(fontStyle: FontStyle.italic);
}
