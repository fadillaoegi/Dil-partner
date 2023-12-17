import 'package:dilpartner/models/user_profile.dart';
import 'package:dilpartner/styles/asset_manager.dart';

List<UserProfile> data = [
  UserProfile(
      fullname: "Alifa",
      occupation: "Accounting",
      age: 20,
      decription:
          "I love solving problem in terms of finance, business, and any case. With you, we will solve all world problems.",
      image: "${DilAssetManager.asset}/people_love1_image"),
  UserProfile(
      fullname: "Shofa",
      occupation: "Designer",
      age: 21,
      decription: "Stay Foolish and i will make dream come true",
      image: "${DilAssetManager.asset}/people_love2_image"),
  UserProfile(
      fullname: "Nabila",
      occupation: "Mobile Dev",
      age: 22,
      decription: "Stay Foolish and i will make dream come true",
      image: "${DilAssetManager.asset}/people_love3_image"),
];
