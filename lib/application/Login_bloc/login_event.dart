part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}

class LoginUsernameChanged extends LoginEvent {
  LoginUsernameChanged({this.username});
  final String? username;
}

class LoginPasswordChanged extends LoginEvent {
  LoginPasswordChanged({this.password});
  final String? password;
}

class LoginSubmitted extends LoginEvent {
  LoginSubmitted({required this.context});
  final BuildContext context;
}

class Loginout extends LoginEvent {
  Loginout({required this.context});
  final BuildContext context;
}
