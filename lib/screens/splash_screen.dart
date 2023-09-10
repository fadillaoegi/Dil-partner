import 'dart:async';
import 'package:dilpartner/screens/signup_screen.dart';
import 'package:dilpartner/styles/colors.dart';
import 'package:dilpartner/styles/fonts.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    SplashStart();
  }

  // ignore: non_constant_identifier_names
  SplashStart() async {
    var durasiSplash = const Duration(seconds: 3);

    return Timer(durasiSplash, () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) {
        return const SignUpScreen();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.all(0),
        decoration: const BoxDecoration(
          color: DilPartnerColor.primaryColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("DilPartner", style: logo400.copyWith(fontSize: 35.0))
          ],
        ),
      ),
    );
  }
}
