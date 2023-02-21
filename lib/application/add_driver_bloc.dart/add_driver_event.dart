part of 'add_driver_bloc.dart';

@immutable
abstract class AddDriverEvent {}

class NameChanged extends AddDriverEvent {
  NameChanged({this.name});
  final String? name;
}

class LicenseChanged extends AddDriverEvent {
  LicenseChanged({this.license});
  final String? license;
}

class Submit extends AddDriverEvent {
  Submit({required this.context});
  final BuildContext context;
}
