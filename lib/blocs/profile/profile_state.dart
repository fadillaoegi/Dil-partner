part of 'profile_bloc.dart';

@immutable
sealed class ProfileState {}

final class ProfileInitial extends ProfileState {}

final class ProfileLoading extends ProfileState {}

// ignore: must_be_immutable
final class ProfileDone extends ProfileState {
  List<UserProfile> result;

  ProfileDone(this.result);
}
