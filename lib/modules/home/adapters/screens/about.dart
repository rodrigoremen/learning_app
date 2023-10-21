import 'package:flutter/material.dart';
import 'package:learning_app/kernel/themes/colors_app.dart';
import 'package:learning_app/modules/home/adapters/screens/widgets/first_form.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('About'),
        ),
        body: FirstForm());
  }
}
