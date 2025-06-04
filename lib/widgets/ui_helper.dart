import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:startup_founder_profile_app/responsive.dart';

class UiHelper {
  static customText({required String text}) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
    );
  }

  //  static customText1({required String text}){
  //   return Text(text, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black87));
  // }

  static Widget customText1({required String text, required double fontSize}) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
    );
  }


  }

