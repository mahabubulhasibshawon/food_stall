import 'package:flutter/material.dart';

const PRODUCT_DATA = [
  {"image": "pizza.png", "name": "Pizza", "rest": "Maritine Star Restaurant", "rating": "4.5 (164)", "price": 20, "currency": "\$"},
  {"image": "burger.png", "name": "Burger", "rest": "Maritine Star Restaurant", "rating": "4.7 (199)", "price": 10, "currency": "\$"},
  {"image": "fries.png", "name": "Fries", "rest": "Maritine Star Restaurant", "rating": "4.2 (101)", "price": 10, "currency": "\$"},
  {"image": "hotdog.png", "name": "HotDog", "rest": "Maritine Star Restaurant", "rating": "3.9 (150)", "price": 15, "currency": "\$"},
];

const CATEGORIES = [
  {"image": "salad.png", "name": "Salad"},
  {"image": "fastfood.png", "name": "Fast Food"},
  {"image": "desert.png", "name": "Desert"},
  {"image": "drinks.png", "name": "Drinks"},
  {"image": "drinks.png", "name": "Drinks"},
];

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
