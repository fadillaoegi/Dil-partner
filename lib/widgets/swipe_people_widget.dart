import 'package:dilpartner/models/user_profile.dart';
import 'package:dilpartner/styles/asset_manager.dart';
import 'package:dilpartner/styles/colors.dart';
import 'package:dilpartner/styles/fonts.dart';
import 'package:flutter/material.dart';

class SwipePeopleWidget extends StatelessWidget {
  const SwipePeopleWidget({
    super.key,
    required this.userProfile,
  });

  final UserProfile userProfile;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        // NOTE: CONTAINER PROFILE
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              color: DilPartnerColor.cardColor,
              borderRadius: BorderRadius.circular(70.0)),
          child: Container(
            height: 518.0,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60.0),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      userProfile.imagePath,
                    ))),
          ),
        ),
        const SizedBox(
          height: 50.0,
        ),
        // NOTE: INFORMASI USER
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 21.0, vertical: 20.0),
          width: double.infinity,
          padding: const EdgeInsets.all(24.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(33.0),
              image: DecorationImage(
                  image: AssetImage(
                      "${DilAssetManager.asset}/glass_card_image.png"))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // NOTE: TEXT
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    userProfile.fullname,
                    style: white500.copyWith(fontSize: 24.0),
                  ),
                  Text(
                    "${userProfile.age}, ${userProfile.occupation}",
                    style: white300.copyWith(fontSize: 16.0),
                  ),
                ],
              ),

              // NOTE: ICON
              Image.asset(
                "${DilAssetManager.asset}/icon_profile.png",
                width: 50.0,
                height: 50.0,
              )
            ],
          ),
        )
      ],
    );
  }
}
