import 'package:flutter/material.dart';

class HOmePageApp extends StatelessWidget {
  const HOmePageApp({Key? key}) : super(key: key);
  final int days =30;
  final  String name = "sudarshan";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catelog App"

        ),
      ),
      body: Center(
        child: Container(
          child: Text(
            "Welcome to $days "
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }
}

 

