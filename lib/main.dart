import 'dart:math';

import 'package:flutter/material.dart';
import 'package:state/screens/alert_screen.dart';
import 'package:state/screens/date_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    MaterialColor _palette = Colors.primaries[Random().nextInt(Colors.primaries.length)];
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: _palette,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            title: Text("State"),
            bottom: TabBar(
              tabs: [
                DateScreen.buildTab(),
                AlertScreen.buildTab(),
                Tab(
                  text: "Switch",
                  icon: Icon(Icons.touch_app),
                ),
                Tab(
                  text: "Slider",
                  icon: Icon(Icons.touch_app),
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              DateScreen(),
              AlertScreen(),
              DateScreen(),
              DateScreen(),
            ],
          )),
    );
  }
}
