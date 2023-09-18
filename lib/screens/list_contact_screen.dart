import 'package:dilpartner/styles/asset_manager.dart';
import 'package:dilpartner/widgets/contact_widget.dart';
import 'package:dilpartner/widgets/header_one_widget.dart';
import 'package:flutter/material.dart';

class ListContactScreen extends StatefulWidget {
  const ListContactScreen({super.key});

  @override
  State<ListContactScreen> createState() => _ListContactScreenState();
}

class _ListContactScreenState extends State<ListContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        margin: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 40.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // NOTE: HEADER
              HeaderOneWidget(
                  text: "People You\nLoved", icon: const Icon(Icons.search)),

              const SizedBox(
                height: 32.0,
              ),

              // NOTE: List Contact`
              Contact(
                name: "Fadil",
                imgUrl: "${DilAssetManager.asset}/me_image.png",
                subName: "halloo..",
              ),
              Contact(
                name: "Shofa",
                imgUrl: "${DilAssetManager.asset}/people_love2_image.png",
                subName: "kamu kosong nggak minggu ini?",
              ),
              Contact(
                name: "Nabila",
                imgUrl: "${DilAssetManager.asset}/people_love1_image.png",
                subName: "Bii, makan yuuk..",
              ),
              Contact(
                name: "Alifa",
                imgUrl: "${DilAssetManager.asset}/people_love3_image.png",
                subName: "Bii, makan yuuk..",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
