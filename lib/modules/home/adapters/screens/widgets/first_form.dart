import 'package:flutter/material.dart';

class FirstForm extends StatelessWidget {
  const FirstForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Creación de cuenta'),),
        body: Form(
        child: TextFormField(
          decoration: const InputDecoration(
            icon: Icon(Icons.person),
            hintText: '¿Cuál es tu nombre?',
            labelText: 'Nombre completo:*',
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Por favor ingresa tu nombre';
            }
            return null;
          },
        ),
      ),
    );
  }
}
