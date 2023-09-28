import 'package:dilpartner/styles/asset_manager.dart';
import 'package:dilpartner/styles/colors.dart';
import 'package:dilpartner/styles/fonts.dart';
import 'package:flutter/material.dart';

class HeaderMainWidget extends StatelessWidget {
  const HeaderMainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
            backgroundImage:
                AssetImage("${DilAssetManager.asset}/user_image.png")),
        Text(
          "DILPARTNER",
          style: logo400.copyWith(fontSize: 28.0),
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none_outlined,
              color: DilPartnerColor.fontColor,
            ))
      ],
    );
  }
}
