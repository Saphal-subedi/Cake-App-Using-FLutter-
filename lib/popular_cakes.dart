// ignore_for_file: camel_case_types

import 'package:cake_app/commonfile.dart';
import 'package:flutter/material.dart';

class Popularcakes extends StatefulWidget {
  const Popularcakes({super.key});

  @override
  State<Popularcakes> createState() => _PopularcakesState();
}

class _PopularcakesState extends State<Popularcakes> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GridView.builder(
        scrollDirection: Axis.vertical,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 10, crossAxisCount: 2),
        itemCount: 4,
        itemBuilder: ((context, index) {
          return InkWell(
            child: Card(
              color: Colors.blueGrey.withOpacity(0.01),
              child: Column(
                children: [
                  Container(
                    height: height * 0.20,
                    margin: EdgeInsets.all(height * 0.0015),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/$index.jpg"),
                      ),
                    ),
                  ),
                  Text(
                    "Pinepple Cake ",
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CommonApp()));
            },
          );
        }));
  }
}
