import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      
      body: Center(
        child: Text(
          'Menu Screen',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}