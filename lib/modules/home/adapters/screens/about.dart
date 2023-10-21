import 'package:flutter/material.dart';
import 'package:learning_app/kernel/themes/colors_app.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('About'),
        ),
        body: Row(
          children: [
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.only(top: 16),
                  color: ColorsApp.primaryColor,
                  child: const Text('Rodrigo'),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.only(top: 16),
                  color: ColorsApp.primaryColor,
                  child: const Text('Rodrigo'),
                ),
              ],
            ),
          ],
        ));
  }
}
