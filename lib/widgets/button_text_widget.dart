import 'package:dilpartner/styles/fonts.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonTextWidget extends StatelessWidget {
  VoidCallback? onPress;
  String? text;
  ButtonTextWidget({
    super.key,
    this.onPress,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: onPress!,
          child: Text(
            text!,
            style: grey400.copyWith(
                fontSize: 20.0, decoration: TextDecoration.underline),
          ),
        ),
      ],
    );
  }
}
