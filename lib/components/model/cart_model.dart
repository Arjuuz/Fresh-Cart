// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    ["Avocado", "60.45", "lib/images/avacado.png", Colors.green],
    ["Apple", "70.15", "lib/images/apple.png", Colors.red],
    ["Donut", "25.00", "lib/images/donut.png", Colors.pink],
    ["Pizza", "220.00", "lib/images/pziaaa.png", Colors.yellow],
    ["Boost", "80.00", "lib/images/boost-removebg-preview.png", Colors.red],
    ["Water", "20.00", "lib/images/water-removebg-preview.png", Colors.blue],
    ["Water", "20.00", "lib/images/water-removebg-preview.png", Colors.blue],
    ["Rice", "60.68", "lib/images/rice-removebg-preview (1).png", Colors.brown],
    ["Cabbage","32.48", "lib/images/cabbage-removebg-preview.png", Colors.green],
    ["Chilli","20.12", "lib/images/chilli-removebg-preview.png", Colors.red],
    ["Onion","48.34", "lib/images/onion-removebg-preview.png", Colors.pink],
    ["Cookie","30.00", "lib/images/cookie-removebg-preview.png", Colors.brown],
    ["Bru","5.00", "lib/images/bru-removebg-preview.png", Colors.green],
    ["Ice Cream","25.00", "lib/images/Icecream-removebg-preview.png", Colors.pink],



    

  ];

  // List of cart items
  List _cartItems = [];

  get shopItems => _shopItems;
  get cartItems => _cartItems;

  // Add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // Remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // Calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
