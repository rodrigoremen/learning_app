import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:learning_app/kernel/themes/colors_app.dart';
import 'package:dio/dio.dart';
import 'package:learning_app/kernel/validations/validations_app.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final TextEditingController _email = TextEditingController(text: '');
  final TextEditingController _password = TextEditingController(text: '');
  final dio = Dio();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 400,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/background.png'),
                        fit: BoxFit.fill)),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 30,
                      width: 80,
                      height: 200,
                      child: FadeInUp(
                          duration: const Duration(seconds: 1),
                          child: Container(
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/light-1.png'))),
                          )),
                    ),
                    Positioned(
                      left: 140,
                      width: 80,
                      height: 150,
                      child: FadeInUp(
                          duration: const Duration(milliseconds: 1200),
                          child: Container(
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/light-2.png'))),
                          )),
                    ),
                    Positioned(
                      right: 40,
                      top: 40,
                      width: 80,
                      height: 150,
                      child: FadeInUp(
                          duration: const Duration(milliseconds: 1300),
                          child: Container(
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/clock.png'))),
                          )),
                    ),
                    Positioned(
                      child: FadeInUp(
                          duration: const Duration(milliseconds: 1600),
                          child: Container(
                            margin: const EdgeInsets.only(top: 50),
                            child: const Center(
                              child: Text(
                                "Bienvenido",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    FadeInUp(
                        duration: const Duration(milliseconds: 1800),
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: ColorsApp.primaryColor),
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                decoration: const BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: ColorsApp.primaryColor))),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Correo electrónico",
                                      hintStyle:
                                          TextStyle(color: Colors.grey[700])),
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
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Contraseña",
                                      hintStyle:
                                          TextStyle(color: Colors.grey[700])),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Por favor ingresa su contraseña';
                                    }
                                    return null;
                                  },
                                  keyboardType: TextInputType.number,
                                  controller: _password,
                                ),
                              )
                            ],
                          ),
                        )),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size(200, 50),
                            backgroundColor: ColorsApp.succesColor),
                        child: const Text('Crear cuenta'),
                        onPressed: () async {
                          Response response;
                          response = await dio.get(
                            'http://192.168.56.1:3000/apiEcomerce/1.0/users',
                            queryParameters: {
                              'email': _email,
                              'password': _password
                            },
                          );
                          print(response.data.toString());
                        },
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(200, 50),
                          backgroundColor: ColorsApp.succesColor,
                        ),
                        icon: Icon(Icons
                            .g_mobiledata), // Aquí puedes cambiar el icono por el de Google
                        label: const Text('Crear cuenta con Google'),
                        onPressed: () async {
                          Response response;
                          response = await dio.get(
                            'http://192.168.56.1:3000/apiEcomerce/1.0/users',
                            queryParameters: {
                              'email': _email,
                              'password': _password
                            },
                          );
                          print(response.data.toString());
                        },
                      ),
                    ),
                    TextButton(
                        onPressed: () async {
                          Response response;
                          response = await dio.get(
                            'http://192.168.56.1:3000/apiEcomerce/1.0/users',
                            queryParameters: {
                              'email': _email,
                              'password': _password
                            },
                          );
                          print(response.data.toString());
                        },
                        child: const Text(
                          "Crear una nueva cuenta",
                          style: TextStyle(color: ColorsApp.primaryColor),
                        )),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
