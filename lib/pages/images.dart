import 'package:flutter/material.dart';

class images extends StatelessWidget {
  const images({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
          child: Column(children: <Widget>[
        Padding(
          padding: EdgeInsets.all(70),
          child: Image.asset('assets/img/pic.png'),
        )
      ])),
    ));
  }
}
