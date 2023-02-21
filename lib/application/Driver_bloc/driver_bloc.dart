import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:moovebe/models/driver_Model.dart';
import 'package:moovebe/repo/driver_repo.dart';

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
        List<DriverList> list = await driverRepo.fetchAllDrivers();
        log(list.toString());
        emit(DriverState(
            driverModel: DriverModel(driverList: list, status: true)));
      } catch (e) {
        print(e.toString());
      }
    });
  }
}
