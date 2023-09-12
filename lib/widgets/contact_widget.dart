import 'package:dilpartner/styles/asset_manager.dart';
import 'package:dilpartner/styles/colors.dart';
import 'package:dilpartner/styles/fonts.dart';
import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.only(top: 18.0),
      width: 345.0,
      height: 90.0,
      decoration: BoxDecoration(
          color: DilPartnerColor.cardColor,
          borderRadius: BorderRadius.circular(20.0)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 70.0,
            width: 70.0,
            child: CircleAvatar(
              backgroundImage:
                  AssetImage("${DilAssetManager.asset}/me_image.png"),
            ),
          ),
          const SizedBox(
            width: 14.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Nabila",
                style: white500.copyWith(fontSize: 20.0),
              ),
              Text(
                "24, Doctor",
                style: grey500.copyWith(fontSize: 14.0),
              )
            ],
          )
        ],
      ),
    );
  }
}
