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
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CofeeShop>(builder: (context, value, child)=>SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text("How would you like your Coffee ?",
            style: TextStyle(fontSize: 20),),
            const SizedBox(height: 25,),

            Expanded(child: ListView.builder(
              itemCount: value.coffeeShop.length,
              itemBuilder: (context, index){
              Cofee eachCoffee = value.coffeeShop[index];

              return CofeeTile(
                cofee: eachCoffee,
                onPressed: () => eachCoffee,
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