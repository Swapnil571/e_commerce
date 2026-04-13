import 'package:flutter/material.dart';

class Utils {
  static final Utils _utils = Utils._internal();
  factory Utils() => _utils;
  Utils._internal();

  static double screenHeight = 0;
  static double screenWidth = 0;

  static getDeviceDimensions(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
  }
}
