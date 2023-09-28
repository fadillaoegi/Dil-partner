import 'package:dilpartner/routes/route.dart';
import 'package:dilpartner/styles/asset_manager.dart';
import 'package:dilpartner/styles/colors.dart';
import 'package:dilpartner/widgets/button_default_widget.dart';
import 'package:dilpartner/widgets/button_text_widget.dart';
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
    TextEditingController? signinEmailController;
    TextEditingController? signinPasswordController;
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
            FormTextCustom(
              name: "Email Address",
              borderRadius: BorderRadius.circular(20.0),
              controller: signinEmailController,
              borderSide: const BorderSide(color: DilPartnerColor.buttonColor),
            ),
            FormPassCustom(
                name: "Password", controller: signinPasswordController),
            const SizedBox(
              height: 116.0,
            ),
            ButtonDefault(
              text: "Sign In",
              onPress: () {
                // Navigator.pushNamed(context, Dil);
              },
            ),
            const SizedBox(
              height: 6.0,
            ),
            ButtonTextWidget(
              onPress: () {
                Navigator.pushReplacementNamed(
                    context, DilPartnerRoute.signUpScreen);
              },
              text: "Sign Up to My Account",
            )
          ],
        ),
      ),
    ));
  }
}
