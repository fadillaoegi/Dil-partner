import 'package:bloc/bloc.dart';
import 'package:dilpartner/data/user_profile_data_local.dart';
import 'package:dilpartner/models/user_profile.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileInitial()) {
    on<OnExplore>((event, emit) async {
      emit(ProfileLoading());
      Future.delayed(const Duration(seconds: 3));
      emit(ProfileDone(dataProfile));
    });
  }
}
