import 'package:bloc/bloc.dart';
import 'package:dilpartner/data/user_account_data_local.dart';
import 'package:dilpartner/models/user.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<RegisterAuth>((event, emit) async {
      emit(AuthLoading());
      DataUserLoginLocal.setDataLoginLocal(event.user);
      DataUserRegisterLocal.setRegisterLocal(event.isRegister);

      Future.delayed(const Duration(seconds: 3));
      emit(AuthDone(
        user: event.user,
        isResgiter: event.isRegister,
      ));
    });
  }
}
