import 'package:cofeeshop/Models/cofee.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CartTile extends StatefulWidget {
  final Cofee cofee;
  void Function()? onPressed;
  final Widget icon;
  CartTile({super.key, required this.cofee, required this.onPressed, required this.icon});

  @override
  State<CartTile> createState() => _CofeeTileState();
}

class _CofeeTileState extends State<CartTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
      ),
      margin: EdgeInsets.only(bottom: 10),

      padding: EdgeInsets.symmetric(vertical:20, horizontal:10),
      child: ListTile(
        title: Text(widget.cofee.name),
        subtitle: Text(widget.cofee.price),
        leading: Image.asset(widget.cofee.imagepath),
        trailing: 
        IconButton(
          icon: widget.icon,
          onPressed: widget.onPressed,
          
          ),
        
      ),
    );
  }
}