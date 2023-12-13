import 'package:dilpartner/models/user.dart';
import 'package:dilpartner/routes/route.dart';
import 'package:dilpartner/styles/asset_manager.dart';
import 'package:dilpartner/styles/colors.dart';
import 'package:dilpartner/widgets/button_default_widget.dart';
import 'package:dilpartner/widgets/form_text_widget.dart';
import 'package:dilpartner/widgets/header_logo.dart';
import 'package:flutter/material.dart';

class SignupUpAgejob extends StatefulWidget {
  const SignupUpAgejob(
      {super.key,
      required this.fullname,
      required this.email,
      required this.password});

  final String fullname;
  final String email;
  final String password;

  @override
  State<SignupUpAgejob> createState() => _SignupUpAgejobState();
}

class _SignupUpAgejobState extends State<SignupUpAgejob> {
  TextEditingController occupationCOntroller = TextEditingController();
  TextEditingController ageCOntroller = TextEditingController();
  @override
  void dispose() {
    occupationCOntroller.clear();
    ageCOntroller.clear();
    super.dispose();
  }

  // String? validationForm() {
  //   if (occupationCOntroller.text.isEmpty && ageCOntroller.text.isEmpty) {
  //     return "All fields cannot be empty";
  //   }
  //   return null;
  // }

  @override
  Widget build(BuildContext context) {
    // print("ini data ${widget.fullname}");

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
              FormTextCustom(
                name: "Occupation",
                hint: "Mobile Dev",
                borderRadius: BorderRadius.circular(20.0),
                controller: occupationCOntroller,
                borderSide:
                    const BorderSide(color: DilPartnerColor.buttonColor),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                // ignore: unnecessary_string_interpolations
                "${widget.fullname}",
                style: const TextStyle(fontSize: 40.0, color: Colors.amber),
              ),
              const SizedBox(
                height: 20.0,
              ),
              FormTextCustom(
                name: "Age",
                hint: "12",
                borderRadius: BorderRadius.circular(20.0),
                controller: ageCOntroller,
                borderSide:
                    const BorderSide(color: DilPartnerColor.buttonColor),
              ),
              const SizedBox(
                height: 131.0,
              ),
              ButtonDefault(
                text: "Continue",
                onPress: () {
                  // final massage = validationForm();
                  // print(massage);
                  // if (massage != null) {
                  //   ScaffoldMessenger.of(context)
                  //       .showSnackBar(SnackBar(content: Text(massage)));
                  //   return;
                  // }
                  User user = User(
                      fullname: widget.fullname,
                      email: widget.email,
                      password: widget.password,
                      occupation: occupationCOntroller.text,
                      age: ageCOntroller.text);
                  Navigator.pushNamed(context, DilPartnerRoute.uploadScreen,
                      arguments: user);
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => UploadPhotoScreen(
                  //               accoupation: occupationCOntroller.text,
                  //               age: ageCOntroller.text,
                  //               email: widget.email,
                  //               fullname: widget.fullname,
                  //               password: widget.password,
                  //             )));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
