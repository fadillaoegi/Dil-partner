import 'package:dilpartner/styles/asset_manager.dart';
import 'package:dilpartner/styles/colors.dart';
import 'package:dilpartner/styles/fonts.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 60.0,
      ),
      decoration: const BoxDecoration(color: DilPartnerColor.primaryColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
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
          ),
          const SizedBox(
            height: 30.0,
          ),
          Image.asset("${DilAssetManager.asset}/hero_image.png")
        ],
      ),
    ));
  }
}
