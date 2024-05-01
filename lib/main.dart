import 'package:flutter/material.dart';
import 'homepage.dart';
import 'settingspage.dart';

enum PageType{
  home,
  settings,
}
PageType page = PageType.home;

void main(){
  runApp(page == PageType.home ? HomePage() : /*(page == PageType.settings)?*/ const SettingsPage() );
}

