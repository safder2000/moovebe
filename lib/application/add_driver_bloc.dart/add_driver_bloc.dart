import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

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
    on<Submit>((event, emit) {});
  }
}
