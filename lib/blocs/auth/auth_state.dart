part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthLoading extends AuthState {}

final class AuthDone extends AuthState {
  final User user;
  final bool isResgiter;

  AuthDone({required this.user, required this.isResgiter});
}
