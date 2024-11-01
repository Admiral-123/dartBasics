import 'package:flutter/material.dart';

TextStyle myTxt() {
  return const TextStyle(fontSize: 44, color: Colors.amberAccent);
}

TextStyle myTxt2({Color textColor = Colors.black}) {
  // given a default value in it
  return TextStyle(fontSize: 21, color: textColor);
}
