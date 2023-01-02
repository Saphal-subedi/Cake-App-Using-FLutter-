import 'package:flutter/material.dart';

class TrendingCake extends StatefulWidget {
  const TrendingCake({super.key});

  @override
  State<TrendingCake> createState() => _TrendingCakeState();
}

class _TrendingCakeState extends State<TrendingCake> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return InkWell(
        child: Container(
          color: Colors.black,
          height: height * 0.3,
          margin: EdgeInsets.all(height * 0.009),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, position) {
              return Container(
                color: Colors.white,
                height: height * 0.19,
                width: width * 0.33,
                child: Card(
                  color: Colors.blueGrey.withOpacity(0.1),
                  margin: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: height * 0.19,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image(
                          image: AssetImage("assets/images/$position.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: height * 0.01),
                      Text(
                        "Black Forest",
                        style: TextStyle(fontWeight: FontWeight.w900),
                      ),
                      SizedBox(height: height * 0.008),
                      Text(
                        "Rs:535",
                        style: TextStyle(fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        onTap: () {
          Navigator.pushNamed(context, '/common');
        });
  }
}
