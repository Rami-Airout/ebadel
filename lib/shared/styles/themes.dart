import 'package:ebadel/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData darkTheme = ThemeData(
  primarySwatch: Colors.amber,
  scaffoldBackgroundColor: ColorDark ,
  appBarTheme: AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor:ColorDark ,
      statusBarIconBrightness: Brightness.light,
    ),
    backgroundColor: ColorDark,
    elevation: 0.0,
    titleTextStyle:TextStyle(
      color:TxtColor,
      fontSize: 20.0,
      fontWeight: FontWeight.w400,
    ),
    iconTheme: IconThemeData(
      color:IconColor,
    ),
  ),
  floatingActionButtonTheme:FloatingActionButtonThemeData(
    backgroundColor:Colors.amber,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Colors.amber,
    elevation: 30.0,
    unselectedItemColor: IconColor,
    backgroundColor: ColorDark,
  ),
  textTheme: TextTheme(
    bodyText1: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w400,
      color: TxtColor,
    ),
  ),
);

ThemeData lightTheme =  ThemeData(
  primarySwatch: Colors.grey,
  scaffoldBackgroundColor: ColorLight,
  appBarTheme: AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: ColorLight,
      statusBarIconBrightness: Brightness.dark,
    ),
    backgroundColor: ColorLight,
    elevation: 0.0,
    titleTextStyle: TextStyle(
      color: TxtColor,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
    ),
    iconTheme: IconThemeData(
      color: IconColor,
    ),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.amber,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Colors.amber,
    elevation: 30.0,
    unselectedItemColor: IconColor,
    backgroundColor: ColorLight,
  ),
  textTheme: TextTheme(
    bodyText1: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w400,
      color: '909090'.toColor(),
    ),
  ),

);