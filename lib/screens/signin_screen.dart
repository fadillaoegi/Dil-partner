import 'package:dilpartner/styles/asset_manager.dart';
import 'package:dilpartner/styles/fonts.dart';
import 'package:dilpartner/widgets/button_default_widget.dart';
import 'package:dilpartner/widgets/form_pass_widget.dart';
import 'package:dilpartner/widgets/form_text_widget.dart';
import 'package:dilpartner/widgets/header_logo.dart';
import 'package:flutter/material.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});
  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 42.0,
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
            FormTextCustom(name: "Email Address"),
            FormPassCustom(name: "Password"),
            const SizedBox(
              height: 116.0,
            ),
            ButtonDefault(
              text: "Sign In",
              onPress: () {},
            ),
            const SizedBox(
              height: 6.0,
            ),
            TextButton(
              onPressed: () {},
              // ignore: sort_child_properties_last
              child: Text(
                "Sign Up to My Account",
                style: grey400.copyWith(fontSize: 14.0),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
