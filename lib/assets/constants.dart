import 'package:flutter/material.dart';


ThemeData kThemeData = ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: Color.fromARGB(100, 255, 103, 0),
  ),
  scaffoldBackgroundColor: Colors.black,
  cardTheme: const CardTheme(
    color: Color.fromARGB(90, 100, 50, 0),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
    margin: EdgeInsets.all(5),
  ),
  textTheme: const TextTheme(
    // **bodyMedium = hallpass text**
    bodyMedium: TextStyle(
      color: Colors.white,
      fontSize: 18,
    )
  )
);