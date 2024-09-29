import 'package:flutter/material.dart';
import 'package:provider/provider.dart';  

import '../Models/cofee.dart';
import '../Models/cofee_shop.dart';
import '../components/cart_tile.dart';  

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

  // Remove items from the cart
  void removeFromCart(Cofee cofee) {
    Provider.of<CofeeShop>(context, listen: false).removeItemFromCart(cofee);
  }

  // Simulate the payment process
  void proceedToPay() {
    // You can add your payment logic here
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Payment"),
        content: const Text("Payment has been processed successfully!"),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context); // Close the dialog
            },
            child: const Text("OK"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            const Text(
              "Your Cart",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),

            // Expanded to show the list of cart items
            Expanded(
              child: Consumer<CofeeShop>(
                builder: (context, value, child) {
                  return ListView.builder(
                    itemCount: value.userCart.length,
                    itemBuilder: (context, index) {
                      // Get individual cart item
                      Cofee eachCoffee = value.userCart[index];

                      return CartTile(
                        cofee: eachCoffee,
                        onPressed: () => removeFromCart(eachCoffee), // Remove coffee from cart
                        icon: const Icon(Icons.delete),
                      );
                    },
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Trigger payment process
                proceedToPay();
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                backgroundColor: Colors.brown[800],
              ),
              child: const Text(
                "Pay",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
