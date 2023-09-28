import 'package:dilpartner/styles/asset_manager.dart';
import 'package:dilpartner/styles/fonts.dart';
import 'package:dilpartner/widgets/button_default_widget.dart';
import 'package:dilpartner/widgets/header_one_widget.dart';
import 'package:dilpartner/widgets/list_card_widget.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // NOTE: SECTION 1
            Stack(
              children: [
                // NOTE: IMAGE HERO
                Container(
                  height: 420.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              "${DilAssetManager.asset}/people_love3_image.png"))),
                ),

                // NOTE: HEADER
                Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 40.0),
                  child: HeaderOneWidget(
                    text: "Lover Profile\nDetails",
                    icon: const Icon(Icons.close_rounded),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30.0,
            ),

            // NOTE: TEXT AND DESKRIPSI
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(
                horizontal: 24.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // NOTE: NAME USER
                  Text(
                    "Nabila",
                    style: white500.copyWith(fontSize: 28.0),
                  ),
                  Text(
                    "21, Ustadza",
                    style: grey300.copyWith(fontSize: 16.0),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),

                  // NOTE: DESKRIPSI
                  Text(
                    "I love solving problem in terms of finance,\nbusiness, and any case. With you, we will\nsolve all world problems.",
                    style: white300.copyWith(fontSize: 16.0),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),

                  // NOTE: LIST CARD WIDGET
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ListCardWidget(),
                          ListCardWidget(),
                          ListCardWidget(),
                          ListCardWidget(),
                        ],
                      )),

                  const SizedBox(
                    height: 40.0,
                  ),
                  ButtonDefault(
                    onPress: () {},
                    text: "Chat Now",
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
