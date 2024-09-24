import 'package:cofeeshop/Models/cofee.dart';
import 'package:flutter/material.dart';

class CofeeTile extends StatelessWidget {
  final Cofee cofee;
  const CofeeTile({super.key, required this.cofee});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(cofee.name),
      subtitle: Text(cofee.price),
      leading: Image.asset(cofee.imagepath),
      
    );
  }
}