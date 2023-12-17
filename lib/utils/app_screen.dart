import 'package:dilpartner/data/user_account_data_local.dart';
import 'package:dilpartner/routes/route.dart';
import 'package:dilpartner/screens/list_contact_screen.dart';
import 'package:dilpartner/screens/profile_screen.dart';
import 'package:dilpartner/screens/search_relationship_screen.dart';
import 'package:dilpartner/screens/signin_screen.dart';
import 'package:dilpartner/screens/signup_screen.dart';
import 'package:dilpartner/screens/splash_screen.dart';
import 'package:dilpartner/screens/upload_photo_screen.dart';
import 'package:dilpartner/styles/theme_default.dart';
import 'package:flutter/material.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({
    super.key,
  });

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  bool isResgiter = false;

  isUserRegister() async {
    isResgiter = await DataUserRegisterLocal.getUserRegister();

    setState(() {});
  }

  @override
  void initState() {
    super.initState();

    isUserRegister();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getThemeDefault(),
      debugShowCheckedModeBanner: false,
      home:
          isResgiter ? const SearchRelationshipScreen() : const SignUpScreen(),
      // initialRoute: DilPartnerRoute.splashScreen,
      routes: {
        DilPartnerRoute.splashScreen: (context) => const SplashScreen(),
        DilPartnerRoute.signUpScreen: (context) => const SignUpScreen(),
        DilPartnerRoute.signInScreen: (context) => const SigninScreen(),
        // DilPartnerRoute.signUpAgejobScreen: (context) => const SignupUpAgejob(),
        DilPartnerRoute.uploadScreen: (context) => const UploadPhotoScreen(),
        DilPartnerRoute.listContactScreen: (context) =>
            const ListContactScreen(),
        DilPartnerRoute.searchRelationshipScreen: (context) =>
            const SearchRelationshipScreen(),
        DilPartnerRoute.profileScreen: (context) => const ProfileScreen()
      },
    );
  }
}
