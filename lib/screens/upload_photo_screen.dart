import 'package:dilpartner/routes/route.dart';
import 'package:dilpartner/styles/asset_manager.dart';
import 'package:dilpartner/styles/fonts.dart';
import 'package:dilpartner/widgets/button_default_widget.dart';
import 'package:dilpartner/widgets/header_logo.dart';
import 'package:dilpartner/widgets/upload_photo_widget.dart';
import 'package:flutter/material.dart';

class UploadPhotoScreen extends StatefulWidget {
  const UploadPhotoScreen({super.key});

  @override
  State<UploadPhotoScreen> createState() => _UploadPhotoScreenState();
}

class _UploadPhotoScreenState extends State<UploadPhotoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 24.0),
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50.0,
            ),
            const HeaderLogo(),
            const SizedBox(
              height: 50.0,
            ),
            UploadPhotoWidget(
              image: "${DilAssetManager.asset}/profile_icon.png",
            ),
            const SizedBox(
              height: 28.0,
            ),
            Text(
              "Shofa Nabila Alifa",
              style: white500.copyWith(fontSize: 22.0),
            ),
            const SizedBox(
              height: 4.0,
            ),
            Text(
              "22, Lawyer",
              style: grey300.copyWith(fontSize: 16.0),
            ),
            const SizedBox(
              height: 240.0,
            ),
            ButtonDefault(
              onPress: () {},
              text: "Update My Profile",
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(
                    context, DilPartnerRoute.searchRelationshipScreen);
              },
              // ignore: sort_child_properties_last
              child: Text(
                "Skip for Now",
                style: grey400.copyWith(fontSize: 14.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
