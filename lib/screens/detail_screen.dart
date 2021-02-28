import 'package:flutter/material.dart';
import 'package:food_ui/models/data.dart';
import 'package:food_ui/screens/cart_screen.dart';

class DetailScreen extends StatefulWidget {
  final TopSellingFood food;

  const DetailScreen({
    Key key,
    @required this.food,
  }) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int number = 1;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        actions: [
          IconButton(icon: Icon(Icons.shopping_bag_rounded), onPressed: () {}),
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Hero(
                    tag: widget.food.foodImage,
                    child: Image.asset(
                      "assets/images/foods/${widget.food.foodImage}.png",
                      height: size.height * 0.3,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Text(widget.food.foodName, style: header),
                SizedBox(height: 20),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "\$${widget.food.foodPrice}",
                            style: TextStyle(color: Colors.white, fontSize: 19),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: 30,
                            width: 30,
                            child: RaisedButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {
                                setState(() {
                                  number++;
                                });
                              },
                              color: primaryColor,
                              child: Icon(Icons.add),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              "$number Kg",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                            width: 30,
                            child: RaisedButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {
                                setState(() {
                                  if (number <= 1) {
                                    setState(() {
                                      number = 1;
                                    });
                                  } else {
                                    setState(() {
                                      number--;
                                    });
                                  }
                                });
                              },
                              color: primaryColor,
                              child: Icon(Icons.remove),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 30, horizontal: 20),
                        child: Text(
                          "Green Cabbage – The king of cabbages and our old friend!"
                          " The wide fan-like leaves are pale green in color and with a slightly rubbery texture when raw."
                          " Pick heads that are tight and feel heavy for their size"
                          " The outer few layers are usually wilted and should be discarded before preparing"
                          "Green Cabbage – The king of cabbages and our old friend!"
                          " The wide fan-like leaves are pale green in color and with a slightly rubbery texture when raw."
                          " Pick heads that are tight and feel heavy for their size."
                          " The outer few layers are usually wilted and should be discarded before preparing."
                          "Green Cabbage – The king of cabbages and our old friend!"
                          " The wide fan-like leaves are pale green in color and with a slightly rubbery texture when raw."
                          " Pick heads that are tight and feel heavy for their size"
                          " The outer few layers are usually wilted and should be discarded before preparing"
                          "Green Cabbage – The king of cabbages and our old friend!"
                          " The wide fan-like leaves are pale green in color and with a slightly rubbery texture when raw."
                          " Pick heads that are tight and feel heavy for their size."
                          " The outer few layers are usually wilted and should be discarded before preparing.",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: thirdColor),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            right: 10,
            child: Container(
              height: size.height * 0.1,
              width: double.infinity,
              child: RaisedButton(
                color: primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CartScreen(),
                      ));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                      size: 35,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Add TO Cart",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
