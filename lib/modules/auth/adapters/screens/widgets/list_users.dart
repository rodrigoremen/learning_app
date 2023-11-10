import 'package:flutter/material.dart';
import 'package:learning_app/kernel/themes/colors_app.dart';

class ListUser extends StatelessWidget {
  final Map item;
  const ListUser({super.key, required this.item});
  String getInitials(String name) {
    List<String> names = name.split(" ");
    String initials = "";
    if (names.length > 0) {
      initials += names[0][0];
    }
    if (names.length > 1) {
      initials += names[1][0];
    }
    return initials.toUpperCase();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: ColorsApp.succesColor,
              foregroundColor: Colors.white,
              child: Text(getInitials(item['name'])),
            ),
            const SizedBox(
              width: 8,
            ),
            Text(item['name']),
            const Spacer(),
            const Icon(Icons.more_vert)
          ],
        ),
      ),
    );
  }
}
