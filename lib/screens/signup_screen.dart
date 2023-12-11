import 'package:dilpartner/routes/route.dart';
import 'package:dilpartner/styles/asset_manager.dart';
import 'package:dilpartner/styles/colors.dart';
import 'package:dilpartner/widgets/button_default_widget.dart';
import 'package:dilpartner/widgets/button_text_widget.dart';
import 'package:dilpartner/widgets/form_pass_widget.dart';
import 'package:dilpartner/widgets/form_text_widget.dart';
import 'package:dilpartner/widgets/header_logo.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController(text: "");
    TextEditingController emailController = TextEditingController(text: "");
    TextEditingController? passwordController;

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // NOTE: HEADER
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HeaderLogo(),
              ],
            ),
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

            // NOTE: FORM
            const SizedBox(
              height: 10.0,
            ),
            FormTextCustom(
              name: "Complete Name", borderRadius: BorderRadius.circular(20.0),
              controller: nameController,
              borderSide: const BorderSide(color: DilPartnerColor.buttonColor),
              hint: "Nabila",
              // controller: emailController,
            ),
            FormTextCustom(
              name: "Email Address", borderRadius: BorderRadius.circular(20.0),
              controller: emailController,
              borderSide: const BorderSide(color: DilPartnerColor.buttonColor),
              hint: "example@gmail.com",
              // controller: emailController,
            ),
            FormPassCustom(
              controller: passwordController,
              name: "Password",
              // controller: passwordController,
            ),
            ButtonDefault(
              text: "Get Started",
              onPress: () {
                Navigator.pushNamed(
                    context, DilPartnerRoute.signUpAgejobScreen);
              },
            ),
            const SizedBox(
              height: 6.0,
            ),
            ButtonTextWidget(
              onPress: () {
                Navigator.pushReplacementNamed(
                    context, DilPartnerRoute.signInScreen);
              },
              text: "Sign In to My Account",
            )
          ],
        ),
      ),
    ));
  }
}
