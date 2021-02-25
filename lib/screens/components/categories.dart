import 'package:flutter/material.dart';
import 'package:food_ui/models/data.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Categories',
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
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          height: size.height * 0.10,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => CategoryList(
              size: size,
              categoryIndex: categories[index],
            ),
            itemCount: categories.length,
          ),
        ),
      ],
    );
  }
}

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key key,
    @required this.size,
    @required this.categoryIndex,
  }) : super(key: key);

  final Size size;
  final Category categoryIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(categoryIndex.backgroundColor),
      ),
      width: size.width * 0.25,
      child: Image.asset("assets/images/categories/${categoryIndex.image}.png"),
    );
  }
}
