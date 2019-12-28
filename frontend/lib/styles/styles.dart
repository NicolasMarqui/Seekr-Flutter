import 'package:flutter/material.dart';

class AppStyles{
   static linkText() => TextStyle(
    color: Colors.blue,
    fontSize: 15,
  );

  static title_1() => TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
  );

  static bold() => TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    height: 1.0,
  );

  static boldWhite() => TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    height: 1.0,
    color: Colors.white,
  );

  static desc() => TextStyle(
    fontSize: 12,
    height: 1.5,
    color: Colors.grey,
  );

  static descLessHeight() => TextStyle(
    fontSize: 12,
    height: 0.8,
    color: Colors.grey,
  );
}