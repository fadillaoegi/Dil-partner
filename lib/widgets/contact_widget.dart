import 'package:dilpartner/styles/asset_manager.dart';
import 'package:dilpartner/styles/colors.dart';
import 'package:dilpartner/styles/fonts.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Contact extends StatelessWidget {
  String? nameContact;
  String? subContact;

  Contact({super.key, this.nameContact, this.subContact});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
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
                backgroundImage: AssetImage(
                    "${DilAssetManager.asset}/people_love1_image.png"),
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
                  nameContact!,
                  // "Nabila",
                  style: white500.copyWith(fontSize: 20.0),
                ),
                const SizedBox(
                  height: 6.0,
                ),
                Text(
                  subContact!,
                  // "24, Doctor",
                  style: grey500.copyWith(fontSize: 14.0),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
