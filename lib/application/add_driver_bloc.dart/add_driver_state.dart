part of 'add_driver_bloc.dart';

@immutable
class AddDriverState {
  final String name;
  final String license;

  AddDriverState({
    this.name = '',
    this.license = '',
  });
  AddDriverState copyWith({
    String? name,
    String? license,
  }) {
    return AddDriverState(
      name: name ?? this.name,
      license: license ?? this.license,
    );
  }
}

class AddDriverInitial extends AddDriverState {}
