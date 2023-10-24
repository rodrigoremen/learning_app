import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:learning_app/kernel/themes/colors_app.dart';

class CustomCarousel extends StatefulWidget {
  final List<Widget> itemsList;
  final double carouselHeight;
  final double indicatorHeight;
  final double indicatorWidth;

  const CustomCarousel(
      {Key? key,
      required this.itemsList,
      this.carouselHeight = 150,
      this.indicatorHeight = 20,
      this.indicatorWidth = 10});

  @override
  State<CustomCarousel> createState() => _CustomCarouselState();
}

class _CustomCarouselState extends State<CustomCarousel> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
            items: widget.itemsList,
            options: CarouselOptions(
                height: widget.carouselHeight,
                autoPlay: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                })),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.itemsList.map((item) {
            int index = widget.itemsList.indexOf(item);
            return Container(
              width: widget.indicatorWidth,
              height: widget.indicatorHeight,
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 3.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == index
                    ? ColorsApp.succesColor
                    : Colors.grey,
              ),
            );
          }).toList(),
        )
      ],
    );
  }
}
