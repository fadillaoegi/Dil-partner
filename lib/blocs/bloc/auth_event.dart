// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'auth_bloc.dart';

@immutable
// sealed class AuthEvent {}
abstract class AuthEvent {}

class RegisterAuth extends AuthEvent {
  final User user;
  final bool isRegister;

  RegisterAuth({
    required this.user,
    required this.isRegister,
  });
}
