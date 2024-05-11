import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:foxtrot/assets/hallpass_input_card.dart';
import '../main.dart';

// First get the FlutterView.
FlutterView view = WidgetsBinding.instance.platformDispatcher.views.first;

// Dimensions in physical pixels (px)
Size size = view.physicalSize;
double width = size.width;
double height = size.height;

/*
// Dimensions in logical pixels (dp)
Size size = view.physicalSize / view.devicePixelRatio;
double width = size.width;
double height = size.height;
*/


class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final Text appBarTitle = const Text('Dashboard');


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        title: appBarTitle,
        centerTitle: true,
        flexibleSpace: Container(height: kToolbarHeight,),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () { Scaffold.of(context).openDrawer(); },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        actions: const [],
      ) ,
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(2),
                color: Theme.of(context).scaffoldBackgroundColor,
                child: ListView.builder(
                  itemCount: hallpassList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return hallpassList[index];
                  },
                ),
              ),
            ),
            HallpassInputCard()
          ],
        ),
      ),
    );
  }
}
