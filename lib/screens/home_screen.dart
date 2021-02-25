import 'package:flutter/material.dart';
import 'package:food_ui/models/data.dart';

import 'components/categories.dart';
import 'components/header.dart';
import 'components/top_selling.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        actions: [IconButton(icon: Icon(Icons.shopping_bag), onPressed: (){},)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Categories(),
            TopSelling(),
          ],
        ),
      ),
    );
  }
}
