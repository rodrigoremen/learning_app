import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:learning_app/kernel/themes/colors_app.dart';

class ContainerShop extends StatelessWidget {
  final String title;
  final String description;
  final double initialRating;
  final String imageUri;
  final double price;

  const ContainerShop(
      {super.key,
      required this.title,
      required this.description,
      required this.initialRating,
      required this.imageUri,
      required this.price});

  @override
  Widget build(BuildContext context) {
    double widthImage = MediaQuery.of(context).size.width;

    return Card(
      elevation: 5,
      child: Column(children: [
        Image.asset(
          imageUri,
          width: widthImage,
          height: 40,
          fit: BoxFit.fitWidth,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              SizedBox(
                width: 64,
                child: Text(
                  title,
                  style: const TextStyle(
                      fontSize: 10, fontWeight: FontWeight.w900),
                ),
              ),
              const Spacer(),
              Column(
                children: [
                  Text(' \$${price.toString()}',
                      style: const TextStyle(
                          fontSize: 8, fontWeight: FontWeight.w900)),
                  RatingBar.builder(
                    initialRating: initialRating,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 8,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ],
              )
            ],
          ),
        ),
        Padding(
            padding: const EdgeInsets.all(8),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                description,
                style: const TextStyle(color: Colors.black54, fontSize: 8),
              ),
            )),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/shop/detail-shop', arguments: {
              'title': title,
              'description': description,
              'initialRating': initialRating,
              'imageUri': imageUri,
              'price': price,
            });
          },
          style: ElevatedButton.styleFrom(
              foregroundColor: ColorsApp.succesColor,
              backgroundColor: Colors.white,
              side: const BorderSide(color: ColorsApp.succesColor),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)))),
          child: const Text("Ver mas"),
        ),
      ]),
    );
  }
}
