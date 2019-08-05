

import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeScreenState();
}

class HomeScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(

      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Home'),
      ),
      body: Center(
          child: Text(
            "aaa",
          )
      ),
    );
  }
}
