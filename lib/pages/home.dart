import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:shimmer/shimmer.dart';
import 'package:tugasgilangr/helpers/size_helper.dart';
import 'package:shimmer/shimmer.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Home> {
  final List<String> imageList = [
    "assets/images/Quran1.jpg",
    "assets/images/Quran2.jpg",
    "assets/images/Quran3.png",
    "assets/images/Quran4.jpg",
    "assets/images/Quran5.jpg",
  ];

  int _current = 0;
  final CarouselController _controller = CarouselController();
  bool _enabled = true;

  void initState() {
    // startTimeout();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.height * 1,
        decoration: const BoxDecoration(),
        child: SingleChildScrollView(
          primary: false,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 20),
                child: CarouselSlider(
                  options: CarouselOptions(
                    // height: 300,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.9,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 2),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    // enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                  ),
                  items: imageList
                      .map(
                        (item) => Container(
                          margin: EdgeInsets.all(5),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            child: Image.asset(item,
                                fit: BoxFit.cover, width: 1000),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              ListView(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                children: [
                  Center(
                    child: Text(
                      "AL Quran",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.blue, Colors.white, Colors.blue],
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        width: displayWidth(context) * 0.3,
                        margin: EdgeInsets.all(5),
                        child: FlutterLogo(),
                      ),
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.blue, Colors.white, Colors.blue],
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        width: displayWidth(context) * 0.3,
                        margin: EdgeInsets.all(5),
                        child: FlutterLogo(),
                      ),
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.blue, Colors.white, Colors.blue],
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        width: displayWidth(context) * 0.3,
                        margin: EdgeInsets.all(5),
                        child: FlutterLogo(),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.blue, Colors.white, Colors.blue],
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        width: displayWidth(context) * 0.3,
                        margin: EdgeInsets.all(5),
                        child: FlutterLogo(),
                      ),
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.blue, Colors.white, Colors.blue],
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        width: displayWidth(context) * 0.3,
                        margin: EdgeInsets.all(5),
                        child: FlutterLogo(),
                      ),
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.blue, Colors.white, Colors.blue],
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        width: displayWidth(context) * 0.3,
                        margin: EdgeInsets.all(5),
                        child: FlutterLogo(),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
