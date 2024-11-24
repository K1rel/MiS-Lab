import 'package:flutter/material.dart';
import 'package:lab/models/item.dart';
import 'package:lab/pages/product_details.dart';

class ListProducts extends StatelessWidget {
  ListProducts({super.key});

  final List<Item> items = [
    Item(
        name: "converse",
        desc: "patiki ubavi",
        price: 1000,
        img: "https://images.journeys.com/images/products/1_620362_ZM.JPG"),
    Item(
        name: "POSSESSION BLACK",
        desc: "patiki crni i ubavi",
        price: 1500,
        img:
            "https://cdn.shopify.com/s/files/1/0035/9405/9887/files/STEVEMADDEN_SHOES_POSSESSION-E_BLACK.jpg?v=1706089675"),
    Item(
        name: "Adidas RETROPY F2",
        desc: "patiki civi i ubavi",
        price: 2100,
        img:
            "https://www.sportvision.mk/files/images/slike_proizvoda/media/IH8/IH8837/images/IH8837.jpg"),
    Item(
        name: "converse",
        desc: "patiki nisto",
        price: 5000,
        img:
            "https://titan22.com/cdn/shop/products/CW2288-111-A_1082x.png?v=1677862917"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        final item = items[index];

        return Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Image.network(item.img),
                title: Text(item.name),
                subtitle: Text("${item.price} MKD"),
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProductDetails(item: item))),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}
