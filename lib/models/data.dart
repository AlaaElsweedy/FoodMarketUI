import 'package:flutter/material.dart';

const Color backgroundColor = Color(0xFF010A43);
const Color primaryColor = Color(0xFF39CF89);
const Color secondaryColor = Color(0xFF2B3676);
const Color thirdColor = Color(0xFF444D88);
const Color cardBackground = Color(0xFF081257);

const TextStyle header = TextStyle(fontSize: 26, color: Colors.white, fontWeight: FontWeight.bold);
const TextStyle smallText = TextStyle(fontSize: 15, color: Colors.grey);

class Category {
  String name, image;
  int backgroundColor;

  Category(this.name, this.image, this.backgroundColor);
}

List<Category> categories = [
  Category('Vegetables', 'vegetables', 0xFF4E4D75),
  Category('Rice', 'rice', 0xFF3F6067),
  Category('Meats', 'meat', 0xFF644C64),
  Category('Bakery', 'bakery', 0xFF634488),
];

class TopSellingFood {
  final String foodName, foodImage, foodUnit;
  final double foodPrice;

  TopSellingFood(
      {this.foodImage, this.foodName, this.foodUnit, this.foodPrice});
}

List<TopSellingFood> foodList = [
  TopSellingFood(
    foodName: 'Green Cabbage',
    foodImage: 'green-cabbage',
    foodUnit: 'Kg',
    foodPrice: 12,
  ),
  TopSellingFood(
    foodName: 'Potato',
    foodImage: 'potato',
    foodUnit: 'Kg',
    foodPrice: 5,
  )
];

class CartItem {
  final String title;
  final String productCountry;
  final String image;
  final int price;
  final String quantity;

  CartItem({
    this.title,
    this.productCountry,
    this.image,
    this.price,
    this.quantity,
  });
}

final List<CartItem> cartList = [
  CartItem(
    title: 'Green Cabbage',
    productCountry: 'Canada',
    image: 'green-cabbage',
    price: 12,
    quantity: '2Kg',
  ),
  CartItem(
    title: 'Pepper',
    productCountry: 'India',
    image: 'potato',
    quantity: '2Kg',
    price: 10,
  ),
  CartItem(
    title: 'Black Coffee',
    productCountry: 'India',
    image: 'black_coffee',
    quantity: '2Kg',
    price: 5,
  ),
  CartItem(
    title: 'Green Cabbage',
    productCountry: 'Canada',
    image: 'green-cabbage',
    price: 12,
    quantity: '2Kg',
  ),
  CartItem(
    title: 'Pepper',
    productCountry: 'India',
    image: 'potato',
    quantity: '2Kg',
    price: 10,
  ),
];
