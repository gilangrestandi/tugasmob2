import 'package:flutter/material.dart';
import '../../helpers/size_helper.dart';

class ListQuran extends StatelessWidget {
  final List Quran = [
    "AL Quran",
    "AL Quran",
    "AL Quran",
    "AL Quran",
  ];

  final List images = [
    "assets/images/Quran1.jpg",
    "assets/images/Quran2.jpg",
    "assets/images/Quran4.jpg",
    "assets/images/Quran5.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover),
        ),
        child: ListView.builder(
          itemCount: Quran.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: Container(
                alignment: Alignment.bottomLeft,
                height: displayHeight(context) * 0.25,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10), //You can use EdgeInsets like above
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage("${images[index]}"), fit: BoxFit.cover),
                ),
                child: Text(
                  "${Quran[index]}",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      // color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
