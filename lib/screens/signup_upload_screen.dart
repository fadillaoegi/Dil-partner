import 'package:dilpartner/styles/fonts.dart';
import 'package:dilpartner/widgets/button_default_widget.dart';
import 'package:dilpartner/widgets/header_logo.dart';
import 'package:flutter/material.dart';

class SignupUpload extends StatefulWidget {
  const SignupUpload({super.key});

  @override
  State<SignupUpload> createState() => _SignupUploadState();
}

class _SignupUploadState extends State<SignupUpload> {
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
              ButtonDefault(
                text: "Get Started",
                onPress: () {},
              ),
              const SizedBox(
                height: 6.0,
              ),
              TextButton(
                onPressed: () {},
                // ignore: sort_child_properties_last
                child: Text(
                  "Skip for now",
                  style: grey400.copyWith(fontSize: 14.0),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
