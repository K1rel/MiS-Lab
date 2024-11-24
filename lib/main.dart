import 'package:flutter/material.dart';
import 'package:lab/pages/list_products.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("211185"),
        ),
        body: Center(
          child: ListProducts(), // Will display normally
        ),
      ),
    );
  }
}
