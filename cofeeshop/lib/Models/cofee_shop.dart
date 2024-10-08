
import 'package:cofeeshop/Models/cofee.dart';
import 'package:flutter/material.dart';

class CofeeShop extends ChangeNotifier{
  //cofee for sale

  final List<Cofee> _shop = [

    Cofee(
      name: 'Long Black', 
      price: "Rs.400.00", 
      imagepath: 'lib/images/hot-coffee.png',
      ),

      Cofee(
      name: 'Latee', 
      price: "Rs.500.00", 
      imagepath: 'lib/images/hot-tea.png',
      ),

      Cofee(
      name: 'Espresso', 
      price: "Rs.300.00", 
      imagepath: 'lib/images/es.png',
      ),

       Cofee(
      name: 'Iced Cofee', 
      price: "Rs.250.00", 
      imagepath: 'lib/images/cold.png',
      ),
  ];

  List<Cofee> _userCart = [];

  List<Cofee> get coffeeShop => _shop;

  List<Cofee> get userCart => _userCart;

  // add item to cart
  void addItemToCart(Cofee coffee) {
      _userCart.add(coffee);
      notifyListeners();
  }

// remove item from cart
  void removeItemFromCart(Cofee coffee){
      userCart.remove(coffee);
      notifyListeners();

  }

}