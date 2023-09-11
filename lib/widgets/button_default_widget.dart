import 'package:dilpartner/styles/fonts.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonDefault extends StatelessWidget {
  String? text;
  VoidCallback? onPress;
  ButtonDefault({super.key, this.onPress, this.text});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55.0,
      width: MediaQuery.sizeOf(context).width,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              backgroundColor: const Color.fromARGB(255, 85, 107, 153)),
          onPressed: onPress!,
          child: Text(
            text!,
            style: white700.copyWith(fontSize: 18.0),
          )),
    );
  }
}
