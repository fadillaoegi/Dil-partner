import 'package:dilpartner/styles/asset_manager.dart';
import 'package:dilpartner/styles/fonts.dart';
import 'package:dilpartner/widgets/form_pass_widget.dart';
import 'package:dilpartner/widgets/form_text_widget.dart';
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
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const HeaderLogo(),
            const SizedBox(
              height: 20.0,
            ),
            SizedBox(
                width: double.infinity,
                height: 215.0,
                child: Image.asset("${DilAssetManager.asset}/hero_image.png")),
            const SizedBox(
              height: 20.0,
            ),
            FormTextCustom(name: "Complete Name"),
            FormTextCustom(name: "Email Address"),
            FormPassCustom(name: "Password"),
            SizedBox(
              height: 55.0,
              width: MediaQuery.sizeOf(context).width,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      backgroundColor: const Color.fromARGB(255, 85, 107, 153)),
                  onPressed: () {},
                  child: Text(
                    "Get Started",
                    style: white700.copyWith(fontSize: 18.0),
                  )),
            ),
            const SizedBox(
              height: 6.0,
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(),
              // ignore: sort_child_properties_last
              child: Text(
                "Sign In to My Account",
                style: grey400.copyWith(fontSize: 14.0),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
