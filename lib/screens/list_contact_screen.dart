import 'package:dilpartner/styles/colors.dart';
import 'package:dilpartner/styles/fonts.dart';
import 'package:dilpartner/widgets/contact_widget.dart';
import 'package:flutter/material.dart';

class ListContactScreen extends StatefulWidget {
  const ListContactScreen({super.key});

  @override
  State<ListContactScreen> createState() => _ListContactScreenState();
}

class _ListContactScreenState extends State<ListContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        margin: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 40.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    iconSize: 24.0,
                    color: DilPartnerColor.fontColor,
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back),
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    "People You\nLoved",
                    style: white500.copyWith(fontSize: 20.0),
                  ),
                  IconButton(
                    iconSize: 24.0,
                    color: DilPartnerColor.fontColor,
                    onPressed: () {},
                    icon: const Icon(Icons.search),
                  ),
                ],
              ),

              const SizedBox(
                height: 32.0,
              ),

              // NOTE: List Contact
              Contact(
                nameContact: "Shofa",
                subContact: "24, Teacher",
              ),
              Contact(
                nameContact: "Nabila",
                subContact: "24, Teacher",
              ),
              Contact(
                nameContact: "Alifa",
                subContact: "24, Teacher",
              ),
              Contact(
                nameContact: "Fadil",
                subContact: "24, Programmer",
              ),
              Contact(
                nameContact: "Oom",
                subContact: "24, Programmer",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
