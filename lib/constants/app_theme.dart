import 'package:flutter/material.dart';
import '../screen_size_config/size_config.dart';
import './strings.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData mainTheme = ThemeData(
    // focusColor: Color(
    //   0xff8D8F9C,
    // ),as
    // buttonColor: Color(0xffB4344D),
    // accentColor: Color(0xffF5F6F8),
    // primaryColor: Color(0xffB4344D),
    scaffoldBackgroundColor: Colors.white,
    buttonTheme: ButtonThemeData(
      textTheme: ButtonTextTheme.normal,
      buttonColor: Color(0xffB4344D),
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
        color: Colors.black,
        fontStyle: FontStyle.normal,
      ),
      headline2: TextStyle(
        fontFamily: 'Poppins',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
      ),
      headline3: TextStyle(
        fontFamily: 'Poppins',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
      ),
      headline4: TextStyle(
        fontFamily: 'Poppins',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w300,
      ),
    ),
  );
  static final InputDecoration textFieldDecoration = InputDecoration(
    contentPadding: EdgeInsets.fromLTRB(
      10.0,
      0.0,
      0.0,
      5.0,
    ),
    filled: true,
    fillColor: Color(0xffF5F6F8),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(5.0),
        bottomLeft: Radius.circular(5.0),
      ),
      borderSide: BorderSide.none,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(5.0),
        bottomLeft: Radius.circular(5.0),
      ),
      borderSide: BorderSide.none,
    ),
    errorBorder: InputBorder.none,
    border: InputBorder.none,
    hintText: Strings.hintText,
    hintStyle: TextStyle(
      fontSize: SizeConfig.textMultiplier * 2.45,
      color: Color(
        0xff8D8F9C,
      ),
    ),
  );

  static final BoxDecoration outerButtonStyle = BoxDecoration(
    color: Color(0xffF5F6F8),
    borderRadius: BorderRadius.only(
      topRight: Radius.circular(5.0),
      bottomRight: Radius.circular(5.0),
    ),
  );
}
