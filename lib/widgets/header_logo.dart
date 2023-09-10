import 'package:dilpartner/styles/fonts.dart';
import 'package:flutter/material.dart';

class HeaderLogo extends StatelessWidget {
  const HeaderLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "DilPartner",
          style: logo400.copyWith(fontSize: 28.0),
        ),
        Text(
          "Find your perfect love.",
          style: white300.copyWith(fontSize: 26.0),
        )
      ],
    );
  }
}
