import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Text appBarTitle = const Text('Dashboard');

  void changePage(PageType newPage){
    setState(() {
      page = newPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appBarTitle,
        centerTitle: true,
        actions: [
          GestureDetector(
              onTap: (){
                changePage(PageType.settings);
              },
              child: const Icon(Icons.change_circle))
        ],
      ) ,
    );
  }
}
