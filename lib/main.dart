import 'package:flutter/material.dart';
import 'home.dart'; 

void main() {
  runApp(const MyApp()); 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DormEatory',
      home: HomePage(), 
    );
  }
}

//Color darkOrange = Color(0xFFFA643F); // Dark orange: #fa643f
//Color lightOrange = Color(0xFFFF9D85); // Light orange: #ff9d85
//Color darkBrown = Color(0xFF331D0E);  // Dark brown: #331d0e
//Color lightBrown = Color(0xFF7A5C47); // Light brown: #7a5c47
//Color lightBeige = Color(0xFFFFF4F0); // Light beige: #fff4f0

