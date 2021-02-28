import 'package:flutter/material.dart';
import 'package:food_ui/models/data.dart';

class CartItemList extends StatelessWidget {
  final CartItem item;

  const CartItemList({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        leading: Container(
          width: size.width * 0.2,
          child: Image.asset(
            "assets/images/foods/${item.image}.png",
            fit: BoxFit.contain,
          ),
        ),
        title: Text(item.title, style: header),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                item.productCountry,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(height: 8),
            Text(
              "\$${item.price}",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        trailing: Container(
          height: size.height * 0.1,
          width: size.width * 0.2,
          child: FittedBox(
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: thirdColor),
                  child: Icon(
                    Icons.add,
                    color: primaryColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    item.quantity,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: thirdColor),
                  child: Icon(
                    Icons.remove,
                    color: primaryColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
