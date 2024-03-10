import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    ["Avocado", "4.00", "lib/images/avocado.png", Colors.green],
    ["Banana", "2.50", "lib/images/banana.png", Colors.yellow],
    ["Chicken", "12.0", "lib/images/chicken.png", Colors.brown],
    ["Water", "1.00", "lib/images/water.png", Colors.blue],
  ];
  //list of cart items
  List _carItems = [];
  get shopItems => _shopItems;
  get cartItems => _carItems;
  //add items to cart
  void addItemsToCart(int index) {
    _carItems.add(_shopItems[index]);
    notifyListeners();
  }

  void removeItemsFromCart(int index) {
    _carItems.removeAt(index);

    notifyListeners();
  }

  //calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _carItems.length; i++) {
      totalPrice += double.parse(_carItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
