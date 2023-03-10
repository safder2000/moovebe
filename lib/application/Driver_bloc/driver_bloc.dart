import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:moovebe/models/driver_model.dart';
import 'package:moovebe/repository/driver_repo.dart';

part 'driver_event.dart';
part 'driver_state.dart';

class DriverBloc extends Bloc<DriverEvent, DriverState> {
  DriverRepository driverRepo;
  DriverBloc(this.driverRepo) : super(InitialState()) {
    on<DriverEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<FetchAllDrivers>((event, emit) async {
      try {
        List<DriverList> list = await DriverRepository.fetchAllDrivers();
        log(list.toString());
        emit(DriverState(
            driverModel: DriverModel(driverList: list, status: true)));
      } catch (e) {
        print(e.toString());
      }
    });
    on<DeleteDriver>((event, emit) async {
      try {
        await DriverRepository.deleteDriver(driver_id: event.driverId!);
        // log(list.toString());
        List<DriverList> list = await DriverRepository.fetchAllDrivers();
        emit(
          DriverState(
            driverModel: DriverModel(status: true, driverList: list),
          ),
        );
      } catch (e) {
        print(e.toString());
      }
    });
  }
}
