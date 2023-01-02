// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:cake_app/popular_cakes.dart';
import 'package:cake_app/trendingcake.dart';
import 'package:flutter/material.dart';

class PageBody extends StatefulWidget {
  const PageBody({super.key});

  @override
  State<PageBody> createState() => _PageBodyState();
}

class _PageBodyState extends State<PageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var currpagevalue = 0.0;

  @override
  void initstate() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        currpagevalue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(height * 0.01),
            height: height * 0.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, position) {
                return buildpage(position);
              },
            ),
          ),
          /* Center(
            child: DotsIndicator(
              dotsCount: 5,
              position: currpagevalue,
              decorator: DotsDecorator(
                color: Colors.black87, // Inactive color
                activeColor: Colors.redAccent,
              ),
            ),*/
          SizedBox(
            height: height * 0.01,
          ),
          Text(
            "Trending Cakes",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: height * 0.025,
              color: Colors.black.withOpacity(0.9),
            ),
          ),
          TrendingCake(),
          Text(
            "Popular Cakes",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: height * 0.025,
            ),
          ),
          Popularcakes(),
        ],
      ),
    );
  }
}

Widget buildpage(int index) {
  return Container(
    margin: EdgeInsets.only(left: 15, right: 15),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage("assets/images/$index.jpg"),
      ),
    ),
  );
}
