import 'package:flutter/material.dart';
import 'package:food_ui/models/data.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          children: [
            Container(
              height: size.height * 0.5,
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
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
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
                                  setState(() {number ++;});
                                },
                                color: primaryColor,
                                child: Icon(Icons.add),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Text(
                                "$number",
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
                                    if (number == 0) {
                                      setState(() {number = 0;});
                                    } else {
                                      setState(() {number--;});
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
