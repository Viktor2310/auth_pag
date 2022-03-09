import 'package:flutter/material.dart';

ThemeData globalThem() => ThemeData(
  fontFamily: 'Arial',
  splashColor: Colors.indigoAccent,// цвет нажатия

  colorScheme: ColorScheme.fromSwatch(
    brightness: Brightness.light,
    primarySwatch: Colors.cyan,
  ).copyWith(
    secondary: Colors.white, ),

  textTheme:const TextTheme(
    headline1: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,fontFamily: 'Arial'),
    headline6: TextStyle(fontSize: 20.0, fontStyle:FontStyle.italic ,fontFamily: 'Arial'),
    bodyText2: TextStyle(fontSize: 14.0,fontFamily: 'Arial',color: Colors.blueGrey),
  ),
);