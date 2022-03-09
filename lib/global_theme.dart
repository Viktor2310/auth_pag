import 'package:flutter/material.dart';

ThemeData globalThem() => ThemeData(
  fontFamily: 'Arial',
  splashColor: Colors.teal,// цвет нажатия

  colorScheme: ColorScheme.fromSwatch(
    brightness: Brightness.light,
    primarySwatch: Colors.cyan,
  ).copyWith(
    secondary: Colors.white, ),

  textTheme:const TextTheme(
    headline1: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,fontFamily: 'Arial'),
    headline6: TextStyle(fontSize: 20.0, fontStyle:FontStyle.italic ,fontFamily: 'Arial'),
    bodyText2: TextStyle(fontSize: 16.0,fontFamily: 'Arial',color: Colors.blueGrey),
  ),
);