import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'bloc_presentation_layer/screens/on_board_screen/on_boarding_screen.dart';
import 'bloc_presentation_layer/screens/properties/list_of_properties.dart';

void main() {
  runApp(RmsApp());
}

class RmsApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RmsAppState();
}

class RmsAppState extends State<RmsApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness:
      Platform.isAndroid ? Brightness.dark : Brightness.light,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarDividerColor: Colors.grey,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
      title: "Rent Management",
      debugShowCheckedModeBanner: false,
/*      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.purple[800],
        accentColor: Colors.amber,
      ),*/
      routes: {
        // '/': (context) => FirstScreen(),
        '/ListOfProperties': (context) => ListOfProperties(),
      },
      home: OnBoardingScreen(),
    );
  }
}