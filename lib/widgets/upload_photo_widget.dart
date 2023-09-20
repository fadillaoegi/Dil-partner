import 'package:dilpartner/styles/asset_manager.dart';
import 'package:dilpartner/styles/colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UploadPhotoWidget extends StatelessWidget {
  String? image;
  UploadPhotoWidget({super.key, this.image});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 200.0,
          height: 200.0,
          padding: const EdgeInsets.all(10.0),
          decoration: const BoxDecoration(
            color: DilPartnerColor.cardColor,
            shape: BoxShape.circle,
          ),
          child: CircleAvatar(
            backgroundImage: AssetImage(
              // "${DilAssetManager.asset}/profile_icon.png",
              image!,
            ),
          ),
        ),
        Positioned(
          bottom: -15,
          child: InkWell(
            onTap: () {},
            child: SizedBox(
              height: 50.0,
              width: 50.0,
              child: CircleAvatar(
                  backgroundImage: AssetImage(
                      "${DilAssetManager.asset}/icon_add_color.png")),
            ),
          ),
        ),
      ],
    );
  }
}
