import 'package:flutter/material.dart';
import 'package:foxtrot/Hallpass_card.dart';
import 'homepage.dart';

List<Hallpass> hallpassList = [
  Hallpass(),
  Hallpass(),
  Hallpass(),
  Hallpass(),
  Hallpass(),
  Hallpass(),
  Hallpass(),
  Hallpass(),

];


enum PageType{
  home,
  settings,
}
PageType page = PageType.home;

void main() =>
    runApp(
      MaterialApp(
        color: Colors.black,
        debugShowCheckedModeBanner: false,
        home: const HomePage(),

        theme: ThemeData(
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
        ),

    )
  );


