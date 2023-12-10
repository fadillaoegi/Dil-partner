import 'dart:io';

import 'package:dilpartner/routes/route.dart';
import 'package:dilpartner/styles/colors.dart';
import 'package:dilpartner/styles/fonts.dart';
import 'package:dilpartner/utils/image_picker.dart';
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
// File dari Dart:io
  File? image;
  void getImageProfile(GetImageFrom source) async {
    final result = await ImagePickerUtil.getImage(source);

    if (result != null) {
      setState(() {
        image = File(result.path);
      });
    }
  }

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
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        height: 250.0,
                        padding: const EdgeInsets.all(20.0),
                        color: DilPartnerColor.buttonColor,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    getImageProfile(GetImageFrom.camera);
                                  },
                                  iconSize: 70.0,
                                  color: Colors.white,
                                  icon: const Icon(Icons.camera_alt)),
                              IconButton(
                                  onPressed: () {
                                    getImageProfile(GetImageFrom.gallery);
                                  },
                                  iconSize: 70.0,
                                  color: Colors.white,
                                  icon: const Icon(Icons.photo)),
                            ]),
                      );
                    });
              },
              child: UploadPhotoWidget(image: image),
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
