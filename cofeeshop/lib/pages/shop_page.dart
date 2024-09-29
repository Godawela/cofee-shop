import 'package:cofeeshop/Models/cofee.dart';
import 'package:cofeeshop/Models/cofee_shop.dart';
import 'package:cofeeshop/components/cofee_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
      // Add the cofee to the shopping cart
  void addToCart (Cofee cofee) {
    Provider.of<CofeeShop> (context, listen: false).addItemToCart(cofee);

    //notification
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(
          "Item Added To Cart",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        // content: const Text(
        //   "The item has been successfully added to your cart.",
        //   style: TextStyle(fontSize: 16),
        // ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context); // Close the dialog
            },
            child: const Text(
              "Close",
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CofeeShop>(builder: (context, value, child)=>SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            const Text("How would you like your Coffee ?",
            style: TextStyle(fontSize: 20),),
            const SizedBox(height: 20,),

            Expanded(child: ListView.builder(
              itemCount: value.coffeeShop.length,
              itemBuilder: (context, index){
              Cofee eachCoffee = value.coffeeShop[index];

              return CofeeTile(
                cofee: eachCoffee,
                onPressed: () => addToCart(eachCoffee),
              );
             
            }
            )
            )
          ],
        ),
      ),
    ),
    );
  }
}