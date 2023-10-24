import 'package:flutter/material.dart';
import 'package:learning_app/kernel/themes/colors_app.dart';
import 'package:learning_app/kernel/widgets/custom/custom_carousel.dart';

class News extends StatelessWidget {
  const News({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsApp.primaryColor,
        title: const Text('Noticias'),
      ),
      body: Container(
          margin: const EdgeInsets.all(10),
          child: const CustomCarousel(
            carouselHeight: 250,
            itemsList: [FirstSection(), SecondSection(), ThirdSection()],
          )),
    );
  }
}

class FirstSection extends StatelessWidget {
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
          Image.asset(
            'assets/images/Logo-utez.png',
            width: width,
            height: 120,
            fit: BoxFit.cover,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Noticia 1',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Ola es el otro texto de la noticia',
                )),
          )
        ],
      ),
    );
  }
}

class SecondSection extends StatelessWidget {
  const SecondSection({super.key});
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
          Image.asset(
            'assets/images/utez.jpg',
            width: width,
            height: 120,
            fit: BoxFit.cover,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Noticia 2',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Ola es el otro texto de la noticia',
                )),
          )
        ],
      ),
    );
  }
}

class ThirdSection extends StatelessWidget {
  const ThirdSection({super.key});
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
          Image.asset(
            'assets/images/ola.jpg',
            width: width,
            height: 120,
            fit: BoxFit.cover,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Noticia 3',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Ola es el otro texto de la noticia',
                )),
          )
        ],
      ),
    );
  }
}
