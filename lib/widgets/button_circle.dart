import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonCircleWidget extends StatelessWidget {
  String? image;
  double? width;
  double? height;
  ButtonCircleWidget(
      {super.key, this.image, this.height = 80.0, this.width = 80.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image!)),
          borderRadius: BorderRadius.circular(100.0)),
    );
  }
}
