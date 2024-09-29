import 'package:cofeeshop/Models/cofee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/home_page.dart';
import 'pages/welcome_page.dart';  

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CofeeShop(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',  // Set the initial route
        routes: {
          '/': (context) => const WelcomePage(),  // Show the Welcome Page first
          '/home': (context) => const HomePage(), // HomePage as the next screen
        },
      ),
    );
  }
}
