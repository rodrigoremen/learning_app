import 'package:flutter/material.dart';
import 'package:learning_app/kernel/themes/colors_app.dart';

class News extends StatelessWidget {
  const News({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsApp.primaryColor,
        title: const Text('Noticias'),
      ),
      body: const Center(child: Text('Noticias')),
    );
  }
}

class FirstSection extends StatelessWidget{
  const FirstSection({super.key});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: <Widget>[
          Image.asset('assets/images/Logo-utez.png', width: width, height: 200, fit: BoxFit.cover,),
          Container(
            padding: const EdgeInsets.all(10),
            child: Align(alignment: Alignment.topLeft, child: Text('Noticia 1', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
          )
        ],
      ),
    );
  }
}