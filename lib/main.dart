import 'package:flutter/material.dart';
import '/telas/home.dart'; // importa o Home

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook',
      debugShowCheckedModeBanner: false,
      home: const Home(), // chama o Home que você já criou
    );
  }
}