import 'package:auth_pag/app_bar_screen.dart';
import 'package:auth_pag/theme_screen.dart';
import 'package:sliding_switch/sliding_switch.dart';
import 'package:auth_pag/p2.dart';
import 'package:auth_pag/p2_1.dart';
import 'package:auth_pag/p2_2.dart';
import 'package:flutter/material.dart';
import 'navigation_screen.dart';

void main() {
  //runApp(const AppBarScreen());
 //runApp(const NavigationScreen());
 // runApp(const reg());
  //runApp(const ThemsApp());
  runApp(const MyApp());
  //runApp(const start());

}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       initialRoute: '/',

      routes: {
        '/': (context) => const start(),
        '/reg': (context) => const reg(),
        '/calca1': (context) => const calca1(),
      },
    );
  }
}

