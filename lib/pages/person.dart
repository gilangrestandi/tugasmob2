import 'package:flutter/material.dart';

class person extends StatelessWidget {
  const person({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        width: 1000,
        child: Text.rich(
          TextSpan(
              text:
                  'Segala puji bagi Allah yang telah menurunkan Kitab Al-Qur an kepada hamba-Nya dan Dia tidak menjadikannya bengkok ', // default text style
              children: <TextSpan>[
                TextSpan(
                    text:
                        ' sebagai bimbingan yang lurus, untuk memperingatkan akan siksa yang sangat pedih dari sisi-Nya dan memberikan kabar gembira kepada orang-orang mukmin yang mengerjakan kebajikan bahwa mereka akan mendapat balasan yang baik',
                    style: TextStyle(fontStyle: FontStyle.italic)),
                TextSpan(
                    text: 'mereka kekal di dalamnya untuk selama-lamanya',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
              style:
                  TextStyle(color: Color.fromARGB(255, 0, 21, 255), height: 2)),
        ),
      )),
    );
  }
}
