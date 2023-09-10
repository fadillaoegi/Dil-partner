import 'package:dilpartner/styles/colors.dart';
import 'package:dilpartner/styles/fonts.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FormTextCustom extends StatelessWidget {
  String? name;
  String? hint;
  TextEditingController? controller;
  // Function? onChange;

  FormTextCustom({
    super.key,
    this.controller,
    this.hint,
    this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name!,
          style: white400.copyWith(fontSize: 16.0),
        ),
        const SizedBox(
          height: 10.0,
        ),
        TextFormField(
          // onChanged: onChange,
          controller: controller,
          maxLength: 100,
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      width: 1.0, color: DilPartnerColor.fontColor),
                  borderRadius: BorderRadius.circular(20.0))),
        ),
        const SizedBox(
          height: 4.0,
        ),
      ],
    );
  }
}
