import 'package:dilpartner/routes/route.dart';
import 'package:dilpartner/styles/asset_manager.dart';
import 'package:dilpartner/widgets/button_circle.dart';
import 'package:dilpartner/widgets/header_main_widget.dart';
import 'package:dilpartner/widgets/swipe_people_widget.dart';
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
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        margin: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // NOTE: HEADER
            HeaderMainWidget(
              image: "${DilAssetManager.asset}/user_image.png",
              onpressNotif: () {
                Navigator.pushNamed(context, DilPartnerRoute.listContactScreen);
              },
            ),
            const SizedBox(
              height: 40.0,
            ),

            // NOTE: SLIDE CONTENT
            const SwipePeopleWidget(),

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
