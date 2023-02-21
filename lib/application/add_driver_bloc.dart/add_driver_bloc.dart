import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:moovebe/repository/driver_repo.dart';

part 'add_driver_event.dart';
part 'add_driver_state.dart';

class AddDriverBloc extends Bloc<AddDriverEvent, AddDriverState> {
  AddDriverBloc() : super(AddDriverInitial()) {
    on<AddDriverEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<NameChanged>((event, emit) {
      emit(state.copyWith(name: event.name));
    });
    on<LicenseChanged>((event, emit) {
      emit(state.copyWith(license: event.license));
    });
    on<Submit>((event, emit) {
      DriverRepository.addNewDriver(
          name: state.name, licence: state.license, context: event.context);
      emit(state);
    });
  }
}
