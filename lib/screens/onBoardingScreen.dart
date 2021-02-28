import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_ui/models/data.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Container(
              height: size.height * 0.8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: Image.asset(
                      "assets/images/intro_image.png",
                      height: size.height * 0.4,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Get your goods at the door",
                    style: header,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Shop Online and get groceries from the store to at your door in less than one hour",
                    style: smallText,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: size.height * 0.2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(radius: 6, backgroundColor: Colors.white),
                    SizedBox(width: 5),
                    CircleAvatar(radius: 6, backgroundColor: Colors.white),
                    SizedBox(width: 5),
                    Container(
                      height: 10,
                      width: 20,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 20),
                      height: size.height * 0.1,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: primaryColor,
                      ),
                      child: IconButton(
                          icon: Icon(
                            Icons.navigate_next,
                            color: Colors.white,
                            size: 60,
                          ),
                          onPressed: () {
                            Navigator.of(context).pushNamed("home");
                          }),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
