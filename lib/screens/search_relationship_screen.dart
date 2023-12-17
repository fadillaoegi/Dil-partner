import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:dilpartner/blocs/profile/profile_bloc.dart';
import 'package:dilpartner/data/user_data_local.dart';
import 'package:dilpartner/models/user.dart';
import 'package:dilpartner/styles/asset_manager.dart';
import 'package:dilpartner/widgets/button_circle.dart';
import 'package:dilpartner/widgets/header_main_widget.dart';
import 'package:dilpartner/widgets/swipe_people_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchRelationshipScreen extends StatefulWidget {
  const SearchRelationshipScreen({
    super.key,
    // required this.userProfile,
  });

  @override
  State<SearchRelationshipScreen> createState() =>
      _SearchRelationshipScreenState();
}

class _SearchRelationshipScreenState extends State<SearchRelationshipScreen> {
  User? account;
  getDataAccount() async {
    final dataAaccount = await DataUserLoginLocal.getDataUserFromLocal();
    final result = User.fromMap(dataAaccount);

    account = result;

    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getDataAccount();
    context.read<ProfileBloc>().add(OnExplore());
  }

  @override
  Widget build(BuildContext context) {
    // final UserProfile userProfile;

    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        margin: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // NOTE: HEADER
            HeaderMainWidget(
              image: "${account?.image}",
              // onpressNotif: () {
              //   Navigator.pushNamed(context, DilPartnerRoute.listContactScreen);
              // },
            ),
            const SizedBox(
              height: 40.0,
            ),

            // NOTE: SLIDE CONTENT
            BlocBuilder<ProfileBloc, ProfileState>(builder: (context, state) {
              if (state is ProfileLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (state is ProfileDone) {
                final userProf = state.result;
                // List<Widget> cards = [];

                // for (var user in userProf) {
                //   cards.add(SwipePeopleWidget(userProfile: user));
                // }
                return Expanded(
                  child: AppinioSwiper(
                    cardBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          SwipePeopleWidget(userProfile: userProf[index]),
                        ],
                      );
                    },
                    cardCount: userProf.length,
                    onEnd: () {
                      context.read<ProfileBloc>().add(OnExplore());
                    },
                  ),

                  // child: SwipePeopleWidget(),
                );
              }
              return Container();
            }),

            const SizedBox(
              height: 50.0,
            ),

            // NOTE: BUTTON BOTTOM
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ButtonCircleWidget(
                  height: 50.0,
                  width: 50.0,
                  image: "${DilAssetManager.asset}/icon_close.png",
                ),
                Container(
                  width: 80.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "${DilAssetManager.asset}/icon_love.png")),
                      borderRadius: BorderRadius.circular(100.0)),
                ),
                ButtonCircleWidget(
                  height: 50.0,
                  width: 50.0,
                  image: "${DilAssetManager.asset}/icon_favorite.png",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
