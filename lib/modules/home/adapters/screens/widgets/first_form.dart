import 'package:flutter/material.dart';
import 'package:learning_app/kernel/themes/colors_app.dart';
import 'package:learning_app/kernel/validations/validations_app.dart';

class FirstForm extends StatefulWidget {
  const FirstForm({super.key});

  @override
  State<FirstForm> createState() => _FirstFormState();
}

class _FirstFormState extends State<FirstForm> {
  final _formKey = GlobalKey<FormState>();
  bool _isButtonDisable = true;
  final TextEditingController _fullName = TextEditingController(text: '');
  final TextEditingController _email = TextEditingController(text: '');
  final TextEditingController _age = TextEditingController(text: '');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Creación de cuenta'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                margin: const EdgeInsets.only(top: 16),
                child: Image.asset(
                  'assets/images/Logo-utez.png',
                  width: 300,
                  height: 100,
                )),
            Form(
              key: _formKey,
              onChanged: () {
                setState(() {
                  _isButtonDisable = !_formKey.currentState!.validate();
                });
              },
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(16),
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
                      controller: _fullName,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(16),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(Icons.email),
                        hintText: '¿Cuál es tu correo?',
                        labelText: 'Correo electrónico:*',
                      ),
                      validator: (value) {
                        RegExp regex = RegExp(ValiationsApp.email);
                        if (value == null || value.isEmpty) {
                          return 'campo obligatorio';
                        } else if (!regex.hasMatch(value)) {
                          return 'Introduce un correo válido';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.emailAddress,
                      controller: _email,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(16),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(Icons.lock),
                        hintText: '¿Cuál es contraseña?',
                        labelText: 'Contraseña:*',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Por favor ingresa su contraseña';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.number,
                      controller: _age,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size(200, 50),
                            backgroundColor: ColorsApp.succesColor),
                        onPressed: _isButtonDisable
                            ? null
                            : () {
                                print('$_fullName, $_email, $_age');
                              },
                        child: const Text('Crear cuenta')),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
