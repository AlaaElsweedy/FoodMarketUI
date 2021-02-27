import 'package:flutter/material.dart';
import 'package:food_ui/models/data.dart';
import 'package:food_ui/screens/detail_screen.dart';

class TopSelling extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Top Selling',
                  style: header,
                ),
                Row(
                  children: [
                    Text(
                      'View All',
                      style: smallText,
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.white,
                      size: 20,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          height: size.height * 0.30,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => TopSellingList(
              size: size,
              categoryIndex: foodList[index],
            ),
            itemCount: foodList.length,
          ),
        ),
      ],
    );
  }
}

class TopSellingList extends StatelessWidget {
  const TopSellingList({
    Key key,
    @required this.size,
    @required this.categoryIndex,
  }) : super(key: key);

  final Size size;
  final TopSellingFood categoryIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: thirdColor,
      ),
      width: size.width * 0.40,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Hero(
            tag: categoryIndex.foodImage,
            child: Image.asset(
                "assets/images/foods/${categoryIndex.foodImage}.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              categoryIndex.foodName,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "${categoryIndex.foodPrice} / ${categoryIndex.foodUnit}",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.add_circle_sharp,
                      color: primaryColor,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailScreen(
                              food: categoryIndex,
                            ),
                          ));
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
