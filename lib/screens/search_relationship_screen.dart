import 'package:dilpartner/styles/asset_manager.dart';
import 'package:dilpartner/styles/colors.dart';
import 'package:dilpartner/styles/fonts.dart';
import 'package:dilpartner/widgets/button_circle.dart';
import 'package:flutter/material.dart';

class SearchRelationshipScreen extends StatefulWidget {
  const SearchRelationshipScreen({super.key});

  @override
  State<SearchRelationshipScreen> createState() =>
      _SearchRelationshipScreenState();
}

class _SearchRelationshipScreenState extends State<SearchRelationshipScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // NOTE: HEADER
            Container(
              margin: const EdgeInsets.only(top: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                      backgroundImage: AssetImage(
                          "${DilAssetManager.asset}/user_image.png")),
                  Text(
                    "DILPARTNER",
                    style: logo400.copyWith(fontSize: 28.0),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.notifications_none_outlined))
                ],
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),

            // NOTE: SLIDE CONTENT
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10.0),
              height: 540.0,
              decoration: BoxDecoration(
                  color: DilPartnerColor.cardColor,
                  borderRadius: BorderRadius.circular(70.0)),
              child: Container(
                height: 518.0,
                width: 3255.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60.0),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                            "${DilAssetManager.asset}/people_love3_image.png"))),
              ),
            ),

            const SizedBox(
              height: 50.0,
            ),

            // NOTE: BUTTON BOTTOM
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ButtonCircleWidget(
                  height: 50.0,
                  width: 50.0,
                  image: "${DilAssetManager.asset}/icon_close.png",
                ),
                Container(
                  width: 80.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "${DilAssetManager.asset}/icon_love.png")),
                      borderRadius: BorderRadius.circular(100.0)),
                ),
                ButtonCircleWidget(
                  height: 50.0,
                  width: 50.0,
                  image: "${DilAssetManager.asset}/icon_favorite.png",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
