part of 'driver_bloc.dart';

@immutable
// abstract class DriverState {
//    List driversList;
//    DriverState({this.driversList =const []});
// }

// class DriverInitial extends DriverState {}

class DriverState {
  DriverState({required this.driverModel});

  DriverModel driverModel;
}

class InitialState extends DriverState {
  InitialState()
      : super(
          driverModel: DriverModel(
            driverList: [],
            status: false,
          ),
        );
}
