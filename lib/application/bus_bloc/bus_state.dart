part of 'bus_bloc.dart';

// @immutable
// abstract class BusState {}

// class BusInitial extends BusState {}

@immutable
class BusState {
  BusState({required this.driverModel});

  BusModel driverModel;
}

class InitialState extends BusState {
  InitialState()
      : super(
          driverModel: BusModel(
            busList: [],
            status: false,
          ),
        );
}
