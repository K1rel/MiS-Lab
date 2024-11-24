import 'package:flutter/material.dart';

import '../models/item.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key, required this.item});

  final Item item;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("211185"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(item.img),
              const SizedBox(height: 25),
              Text(
                item.name,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(item.desc == "" ? "No description" : item.desc.toString()),
              const SizedBox(height: 8),
              Text('Price: ${item.price}'),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
