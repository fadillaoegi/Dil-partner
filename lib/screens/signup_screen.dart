import 'package:dilpartner/styles/colors.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        color: DilPartnerColor.primaryColor,
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 50.0,
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("DilPartner"),
              Text("Find your perfect love.")
            ],
          )
        ],
      ),
    ));
  }
}
