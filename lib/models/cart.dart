import 'package:flutter/foundation.dart';

class CartItem with ChangeNotifier {
  final String title;
  final String image;
  final String countryProduct;
  final int price;
  final String quantity;

  CartItem({
    this.title,
    this.image,
    this.countryProduct,
    this.price,
    this.quantity,
  });
}

class Cart {
  final List<CartItem> _cartItemList = [
    CartItem(
      title: 'Green Cabbage',
      image: 'green-cabbage',
      countryProduct: 'Canada',
      price: 12,
      quantity: '2Kg',
    ),
    CartItem(
      title: 'Pepper',
      image: 'potato',
      countryProduct: 'India',
      price: 10,
      quantity: '2Kg',
    ),
    CartItem(
      title: 'Black Coffee',
      image: 'black_coffee',
      countryProduct: 'India',
      price: 10,
      quantity: '2Kg',
    ),
    CartItem(
      title: 'Green Cabbage',
      image: 'green-cabbage',
      countryProduct: 'Canada',
      price: 12,
      quantity: '2Kg',
    ),
  ];

  List<CartItem> get cartItemList => _cartItemList;
}