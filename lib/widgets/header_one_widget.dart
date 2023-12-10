import 'package:dilpartner/styles/colors.dart';
import 'package:dilpartner/styles/fonts.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HeaderOneWidget extends StatelessWidget {
  String? text;
  Icon? icon;
  // VoidCallback? onpress;
  HeaderOneWidget({super.key, this.text, this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          iconSize: 24.0,
          color: DilPartnerColor.fontColor,
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        Text(
          textAlign: TextAlign.center,
          // "People You\nLoved",
          text!,
          style: white500.copyWith(fontSize: 20.0),
        ),
        IconButton(
          iconSize: 24.0,
          color: DilPartnerColor.fontColor,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: icon!,
        ),
      ],
    );
  }
}
