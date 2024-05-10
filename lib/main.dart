

import 'package:flutter/material.dart';
import 'package:foxtrot/assets/Hallpass_card.dart';
import 'package:foxtrot/pages/input_page.dart';
import 'pages/dashboard_page.dart';
import 'assets/constants.dart';

List<Hallpass> hallpassList = [
  Hallpass(),
  Hallpass(),
  Hallpass(),
  Hallpass(),

];


void main() =>
    runApp(
      MaterialApp(
        color: Colors.black,
        debugShowCheckedModeBanner: false,
        initialRoute: 'dashboard',
        theme: kThemeData,
        routes: {
          'dashboard': (context) => const DashboardPage(),
          'input-page': (context) => HallpassPage(),
        },
    )
  );


