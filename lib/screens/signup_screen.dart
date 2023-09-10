import 'package:dilpartner/styles/asset_manager.dart';
import 'package:dilpartner/styles/colors.dart';
import 'package:dilpartner/styles/fonts.dart';
import 'package:dilpartner/widgets/header_logo.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 50.0,
      ),
      decoration: const BoxDecoration(color: DilPartnerColor.primaryColor),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const HeaderLogo(),
            const SizedBox(
              height: 30.0,
            ),
            Image.asset("${DilAssetManager.asset}/hero_image.png"),
            const SizedBox(
              height: 30.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Complete Name",
                  style: white400.copyWith(fontSize: 16.0),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  maxLength: 100,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1.0, color: DilPartnerColor.fontColor),
                          borderRadius: BorderRadius.circular(20.0))),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Text(
                  "Email Address",
                  style: white400.copyWith(fontSize: 16.0),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  maxLength: 100,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1.0, color: DilPartnerColor.fontColor),
                          borderRadius: BorderRadius.circular(20.0))),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Text(
                  "Password",
                  style: white400.copyWith(fontSize: 16.0),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  maxLength: 100,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1.0, color: DilPartnerColor.fontColor),
                          borderRadius: BorderRadius.circular(20.0))),
                ),
                const SizedBox(
                  height: 4.0,
                ),
              ],
            ),
            SizedBox(
              height: 55.0,
              width: MediaQuery.sizeOf(context).width,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      backgroundColor:
                          const Color.fromARGB(255, 188, 132, 228)),
                  onPressed: () {},
                  child: Text(
                    "Get Started",
                    style: white700.copyWith(fontSize: 18.0),
                  )),
            )
          ],
        ),
      ),
    ));
  }
}
