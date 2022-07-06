import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

Widget buildImage(String sliderImage, int index) => Container(
  decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(sliderImage),
        fit: BoxFit.fill,
      ),
      color: Colors.white),
);
final sliderImages = [
  'images/sliderimg1.jpg',
  'images/sliderimg2.jpg',
  'images/sliderimg3.jpg',
];

class HomePage_Slider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CarouselSlider.builder(
      itemCount: sliderImages.length,
      itemBuilder: (contex, index, realIndex) {
        final sliderImage = sliderImages[index];
        return buildImage(sliderImage, index);
      },
      options: CarouselOptions(
        height: size.height * 0.6, viewportFraction: 1, autoPlay: true,
      ),
    );
  }
}
