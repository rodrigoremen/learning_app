import 'package:flutter/material.dart';
import 'package:learning_app/kernel/themes/colors_app.dart';
import 'package:learning_app/modules/shop/adapters/screens/widgets/container_shop.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> item = {
      'title': 'Iphone 13',
      'description': 'Nuevo iphone 13 con 1TB de almacenamiento',
      'initialRating': 4.5,
      'imageUri': 'assets/images/Logo-utez.png',
      'price': 8000.00
    };
    final Map<String, dynamic> item2 = {
      'title': 'Suéter',
      'description': 'Suéter de lana, muy calentito',
      'initialRating': 3.8,
      'imageUri': 'assets/images/sueter.jpg',
      'price': 300.00
    };
    final Map<String, dynamic> item3 = {
      'title': 'Termo de agua',
      'description': 'Termo de acero inoxidable, 1L de capacidad',
      'initialRating': 2.8,
      'imageUri': 'assets/images/termo.jpg',
      'price': 8000.00
    };
    final List items = [item, item2, item3];
    return Scaffold(
      appBar: AppBar(
        title: const Text("nido del halcon"),
        backgroundColor: ColorsApp.primaryColor,
        foregroundColor: ColorsApp.succesColor,
        actions: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/shop/shop-cart', arguments: item);
            },
            child: Container(
              width: 60,
              height: 60,
              margin: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                  color: Colors.transparent, shape: BoxShape.circle),
              child: const Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(8),
          crossAxisSpacing: 2,
          mainAxisSpacing: 16,
          crossAxisCount: 2,
          children: List.generate(items.length, (index) {
            return ContainerShop(
              title: items[index]['title'],
              description: items[index]['description'],
              initialRating: items[index]['initialRating'],
              imageUri: items[index]['imageUri'],
              price: items[index]['price'],
            );
          })),
    );
  }
}
