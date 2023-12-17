import 'package:dilpartner/models/user_profile.dart';
import 'package:dilpartner/styles/asset_manager.dart';

List<UserProfile> dataProfile = [
  UserProfile(
      fullname: "Maudy",
      occupation: "Accounting",
      age: 20,
      decription:
          "I love solving problem in terms of finance, business, and any case. With you, we will solve all world problems.",
      imagePath: "${DilAssetManager.asset}/maudy.png"),
  UserProfile(
      fullname: "Ariel Tatum",
      occupation: "Designer",
      age: 21,
      decription: "Stay Foolish and i will make dream come true",
      imagePath: "${DilAssetManager.asset}/arieltatum.png"),
  UserProfile(
      fullname: "Chelsi",
      occupation: "Marketing",
      age: 22,
      decription: "Stay Foolish and i will make dream come true",
      imagePath: "${DilAssetManager.asset}/chelsi.png"),
  UserProfile(
      fullname: "Ruby",
      occupation: "Nurse",
      age: 22,
      decription: "Stay Foolish and i will make dream come true",
      imagePath: "${DilAssetManager.asset}/ruby.png"),
];
