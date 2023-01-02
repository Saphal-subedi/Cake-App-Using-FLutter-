import 'package:flutter/material.dart';

class CommonApp extends StatefulWidget {
  final String description;
  final double price;
  final double index;

  const CommonApp(
      {super.key,
      this.description = "DESCRIPTION ABOUT CAKE",
      this.price = 100,
      this.index = 4});

  @override
  State<CommonApp> createState() => _CommonAppState();
}

class _CommonAppState extends State<CommonApp> {
  var item = 0;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    int _selectedPage = 0;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              height: height * 0.6,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/images/0.jpg",
                    ),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: height * 0.025,
            child: CommonButton(),
          ),
          Positioned(
              left: 0,
              right: 0,
              top: height * 0.60,
              child: Text(
                "${widget.description}",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
              )),
          Positioned(
              left: 0,
              right: 0,
              top: height * 0.65,
              child: Text(
                "Rs:${widget.price}",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              )),
        ]),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          // notchMargin: 4.0,
          child: new Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.remove,
                  color: Colors.black,
                  size: height * 0.03,
                ),
                onPressed: () {
                  setState(() {
                    if (item < 1) {
                      item = 0;
                    } else {
                      item = item - 1;
                    }
                  });
                },
              ),
              Text(
                "$item",
                style: TextStyle(fontSize: height * 0.03),
              ),
              IconButton(
                icon: Icon(
                  Icons.add,
                  color: Colors.black,
                  size: height * 0.03,
                ),
                onPressed: () {
                  print("Progress");
                  setState(() {
                    if (item > 9) {
                      item = 10;
                    } else {
                      item = item + 1;
                    }
                  });
                },
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(height * 0.015)),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Add to Cart",
                    style:
                        TextStyle(backgroundColor: Colors.yellow, fontSize: 20),
                  ),
                ),
              ),
              // Column(
              //   children: [
              //     Text("Add to Cart"),
              //     Icon(Icons.shopping_cart),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class CommonButton extends StatelessWidget {
  const CommonButton({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height * 0.1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              size: height * 0.05,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.shopping_cart,
              size: height * 0.05,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
