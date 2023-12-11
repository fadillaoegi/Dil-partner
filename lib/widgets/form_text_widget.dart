import 'package:dilpartner/styles/colors.dart';
import 'package:dilpartner/styles/fonts.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FormTextCustom extends StatelessWidget {
  String? name;
  String? hint;
  TextEditingController? controller;
  BorderRadius? borderRadius;
  BorderSide? borderSide;

  FormTextCustom({
    super.key,
    this.controller,
    this.hint,
    this.name,
    this.borderRadius,
    this.borderSide,
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
          maxLength: 100,
          style: const TextStyle(color: DilPartnerColor.fontColor),
          decoration: InputDecoration(
              hintText: hint,
              hintStyle: const TextStyle(
                  fontWeight: FontWeight.w300,
                  wordSpacing: 3.0,
                  color: Color.fromARGB(255, 149, 146, 146)),
              fillColor: Colors.amber,
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    width: 1.0, color: DilPartnerColor.fontColor),
                borderRadius: BorderRadius.circular(20.0),
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: borderRadius!, borderSide: borderSide!)),
        ),
        const SizedBox(
          height: 4.0,
        ),
      ],
    );
  }
}
