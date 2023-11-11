import 'package:flutter/material.dart';
import 'package:learning_app/kernel/themes/colors_app.dart';
import 'package:learning_app/modules/shop/adapters/screens/widgets/container_shop.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("nido del halcon"),
          backgroundColor: ColorsApp.primaryColor,
          foregroundColor: ColorsApp.succesColor,
        ),
        body: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(8),
            crossAxisSpacing: 2,
            mainAxisSpacing: 16,
            crossAxisCount: 2,
            children: const <Widget>[
              ContainerShop(),
              ContainerShop(),
              ContainerShop()
            ]));
  }
}
