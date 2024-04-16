import 'package:flutter/material.dart';
import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black54,
        buttonTheme: const ButtonThemeData(buttonColor: Colors.grey),
          appBarTheme: const AppBarTheme(
          toolbarTextStyle: TextStyle(fontSize: 30, ),
          backgroundColor: Colors.orangeAccent,
          toolbarHeight: 30
        ),
      ),

      home: const HomePage(),
    );
  }
}




