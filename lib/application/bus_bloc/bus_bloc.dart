import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:moovebe/models/bus_model.dart';
import 'package:moovebe/repository/bus_repo.dart';
import 'package:moovebe/repository/driver_repo.dart';

part 'bus_event.dart';
part 'bus_state.dart';

class BusBloc extends Bloc<BusEvent, BusState> {
  BusBloc() : super(InitialState()) {
    on<BusEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<FetchAllBus>((event, emit) async {
      try {
        List<BusModel> list = await BusRepository.fetchAllBuses();
        log(list.toString());
        emit(BusState(driverModel: BusModel(busList: list, status: true)));
      } catch (e) {
        print(e.toString());
      }
    });
    on<DemoSize>((event, emit) async {
      BusModel gg = BusModel(
          busList: [], status: true); //for dummy model if no buses found.
      try {
        List<BusModel> list = [gg, gg, gg, gg, gg];
        log(list.toString());
        emit(BusState(driverModel: BusModel(busList: list, status: true)));
      } catch (e) {
        print(e.toString());
      }
    });
  }
}
