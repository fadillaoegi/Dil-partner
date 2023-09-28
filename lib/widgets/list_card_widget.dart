
import 'package:dilpartner/styles/colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListCardWidget extends StatelessWidget {
  Color? color;
  ListCardWidget({super.key, this.color = DilPartnerColor.fontColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20.0),
      width: 120.0,
      height: 80.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0), color: color),
    );
  }
}
