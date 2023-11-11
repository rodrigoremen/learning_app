import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:learning_app/kernel/themes/colors_app.dart';

class ContainerShop extends StatelessWidget {
  const ContainerShop({super.key});

  @override
  Widget build(BuildContext context) {
    double widthImage = MediaQuery.of(context).size.width;

    return Card(
      elevation: 5,
      child: Column(children: [
        Image.asset(
          'assets/images/Logo-utez.png',
          width: widthImage,
          height: 50,
          fit: BoxFit.fitWidth,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const SizedBox(
                width: 64,
                child: Text(
                  "Iphone pro Max 15",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w900),
                ),
              ),
              const Spacer(),
              Align(
                alignment: Alignment.topCenter,
                child: RatingBar.builder(
                  initialRating: 3,
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
              )
            ],
          ),
        ),
        const Padding(
            padding: EdgeInsets.all(8),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Igual al del año pasado pero mas caro",
                style: TextStyle(color: Colors.black54, fontSize: 8),
              ),
            )),
        ElevatedButton(
          onPressed: () {},
          child: const Text("Ver mas"),
          style: ElevatedButton.styleFrom(
              foregroundColor: ColorsApp.succesColor,
              backgroundColor: Colors.white,
              side: const BorderSide(color: ColorsApp.succesColor),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)))),
        ),
      ]),
    );
  }
}
