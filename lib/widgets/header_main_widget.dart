import 'dart:io';
import 'package:dilpartner/data/user_data_local.dart';
import 'package:dilpartner/routes/route.dart';
import 'package:dilpartner/styles/asset_manager.dart';
import 'package:dilpartner/styles/colors.dart';
import 'package:dilpartner/styles/fonts.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HeaderMainWidget extends StatelessWidget {
  HeaderMainWidget({
    super.key,
    required this.image,
  });

  // VoidCallback? onpressNotif;
  String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            DataUserRegisterLocal.logout();
            Navigator.pushNamedAndRemoveUntil(
                context, DilPartnerRoute.signUpScreen, (route) => false);
          },
          child: CircleAvatar(
            // backgroundColor: Colors.white,
            // ignore: unnecessary_null_comparison
            backgroundImage: image != null
                ? FileImage(File(image))
                : AssetImage(
                    "${DilAssetManager.asset}/me_image.png",
                  ) as ImageProvider,
          ),
        ),
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
