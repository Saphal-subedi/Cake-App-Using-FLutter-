// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 50,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              child: CircleAvatar(
                radius: 50,
                child: Image(image: AssetImage("assets/images/programmer.png")),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text(
                'Company Name',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text(
                'Contact Number',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
