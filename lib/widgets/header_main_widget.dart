import 'package:dilpartner/styles/colors.dart';
import 'package:dilpartner/styles/fonts.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HeaderMainWidget extends StatelessWidget {
  HeaderMainWidget({super.key, this.onpressNotif, this.image});

  VoidCallback? onpressNotif;
  String? image;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(backgroundImage: AssetImage(image!)),
        Text(
          "DILPARTNER",
          style: logo400.copyWith(fontSize: 28.0),
        ),
        IconButton(
            onPressed: onpressNotif,
            icon: const Icon(
              Icons.notifications_none_outlined,
              color: DilPartnerColor.fontColor,
            ))
      ],
    );
  }
}
