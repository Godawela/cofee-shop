import 'package:cofeeshop/Models/cofee.dart';
import 'package:flutter/material.dart';

class CofeeTile extends StatelessWidget {
  final Cofee cofee;
  void Function()? onPressed;
  CofeeTile({super.key, required this.cofee, required this.onPressed});

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
        title: Text(cofee.name),
        subtitle: Text(cofee.price),
        leading: Image.asset(cofee.imagepath),
        trailing: IconButton(icon: Icon(Icons.add), onPressed: onPressed,),
        
      ),
    );
  }
}