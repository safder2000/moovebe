part of 'driver_bloc.dart';

@immutable
abstract class DriverEvent {}

class FetchAllDrivers extends DriverEvent {}

class DeleteDriver extends DriverEvent {
  DeleteDriver({required this.driverId});
  final String? driverId;
}
