import 'package:flutter/material.dart';

class MyImageSlider extends StatelessWidget {
  final Function (int) onChanged;
  final String image;
  const MyImageSlider({super.key,required this.onChanged, required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 250,
    child: PageView.builder(
      onPageChanged: onChanged,
      itemBuilder: (context, index){
      return Hero(
        tag: image,
        child: Image.asset(image));
    }
    ),
    );
  }
}