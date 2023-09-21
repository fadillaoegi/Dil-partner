import 'package:dilpartner/styles/asset_manager.dart';
import 'package:dilpartner/widgets/button_default_widget.dart';
import 'package:dilpartner/widgets/form_text_widget.dart';
import 'package:dilpartner/widgets/header_logo.dart';
import 'package:flutter/material.dart';

class SignupUpAgejob extends StatefulWidget {
  const SignupUpAgejob({super.key});
  @override
  State<SignupUpAgejob> createState() => _SignupUpAgejobState();
}

class _SignupUpAgejobState extends State<SignupUpAgejob> {
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
                  child:
                      Image.asset("${DilAssetManager.asset}/hero_image.png")),
              const SizedBox(
                height: 20.0,
              ),
              FormTextCustom(name: "Occupation"),
              FormTextCustom(name: "Age"),
              const SizedBox(
                height: 131.0,
              ),
              ButtonDefault(
                text: "Get Started",
                onPress: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
