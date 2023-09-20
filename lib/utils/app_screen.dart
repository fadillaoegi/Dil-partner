import 'package:dilpartner/routes/route.dart';
import 'package:dilpartner/screens/list_contact_screen.dart';
import 'package:dilpartner/screens/signin_screen.dart';
import 'package:dilpartner/screens/signup_screen.dart';
import 'package:dilpartner/screens/signup_upload_screen.dart';
import 'package:dilpartner/screens/splash_screen.dart';
import 'package:dilpartner/screens/upload_photo_screen.dart';
import 'package:dilpartner/styles/theme_default.dart';
import 'package:flutter/material.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getThemeDefault(),
      debugShowCheckedModeBanner: false,
      initialRoute: DilPartnerRoute.uploadScreen,
      initialRoute: DilPartnerRoute.signUpUploadScreen,
      routes: {
        DilPartnerRoute.splashScreen: (context) => const SplashScreen(),
        DilPartnerRoute.signUpScreen: (context) => const SignUpScreen(),
        DilPartnerRoute.signInScreen: (context) => const SigninScreen(),
        DilPartnerRoute.signUpUploadScreen: (context) => const SignupUpload(),
        DilPartnerRoute.listContactScreen: (context) =>
            const ListContactScreen(),
        DilPartnerRoute.uploadScreen: (context) => const UploadPhotoScreen(),
      },
    );
  }
}
