import 'package:flutter/material.dart';
import 'package:latihanday7sekolahbeta2/ui/shopping_cart/index.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ihza Store',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const ShoppingCartPage(),
    );
  }
}
