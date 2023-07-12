import 'package:flutter/material.dart';

class Shapes extends StatelessWidget {

  const Shapes({Key? key, required this.image, }) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(image,
      width: 180,
      height: 150
    );
  }
}
