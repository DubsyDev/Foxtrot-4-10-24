import 'package:flutter/material.dart';
import 'homepage.dart';
import 'settingspage.dart';

enum PageType{
  home,
  settings,
}
PageType page = PageType.home;

void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: page == PageType.home ? const HomePage() : /*(page == PageType.settings)?*/ const SettingsPage(),
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.grey,
          ),

    )
  );
}

