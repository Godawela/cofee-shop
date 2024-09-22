import 'dart:io';

import 'package:cofeeshop/Models/cofee.dart';
import 'package:flutter/material.dart';

class CofeeShop {
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

  Link<Cofee> _userCart = [];

  Link<Cofee> get coffeeShop => _shop;

  Link<Cofee> get userCart => _userCart;

  // add item to cart
  void addItemToCart(Coffee coffee) {
      _userCart.add(coffee);
  }

// remove item from cart
  void removeItemFromCart(Coffee coffee){
      userCart.remove(coffee);

  }

}