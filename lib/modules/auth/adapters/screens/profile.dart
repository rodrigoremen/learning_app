import 'package:flutter/material.dart';
import 'package:learning_app/kernel/themes/colors_app.dart';
import 'package:learning_app/modules/auth/adapters/screens/widgets/list_users.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final Map item = {"name": "Rodrigo Iván"};
    final Map item2 = {"name": "Alex Marchado"};
    final List<Map> items = [item, item2];

    return Scaffold(
        appBar: AppBar(
            title: const Text('Usuarios'),
            backgroundColor: ColorsApp.primaryColor,
            foregroundColor: Colors.white),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ListUser(
                item: items[index],
              );
            },
          ),
        ));
  }
}
