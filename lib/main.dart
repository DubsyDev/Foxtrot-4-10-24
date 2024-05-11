

import 'package:flutter/material.dart';
import 'package:foxtrot/assets/Hallpass_card.dart';
import 'pages/dashboard_page.dart';
import 'assets/constants.dart';

List<Hallpass> hallpassList = [
  Hallpass(student: 'Voss Berokoff', origin: 'B205', destination: 'B105',),


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
        },
    )
  );


