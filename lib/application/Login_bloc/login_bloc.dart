import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:moovebe/application/auth/auth_repository.dart';
import 'package:moovebe/application/auth/form_submission_status.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository authRepo;
  LoginBloc(this.authRepo) : super(LoginInitial()) {
    on<LoginEvent>((event, emit) async {
      // Username updated
      if (event is LoginUsernameChanged) {
        emit(state.copyWith(username: event.username));

        // Password updated
      } else if (event is LoginPasswordChanged) {
        emit(state.copyWith(password: event.password, formStatus: null));

        // Form submitted
      } else if (event is LoginSubmitted) {
        emit(state.copyWith(formStatus: FormSubmitting()));

        try {
          await authRepo.login(
              password: state.password,
              username: state.username,
              context: event.context);
          emit(state.copyWith(formStatus: SubmissionSuccess()));
        } catch (e) {
          emit(state.copyWith(
              formStatus: SubmissionFailed(Exception('failed to login'))));
        }
      }
    });
    on<Loginout>((event, emit) {
      authRepo.logout(event.context);
    });
  }
}
