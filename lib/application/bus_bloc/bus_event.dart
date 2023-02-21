part of 'bus_bloc.dart';

@immutable
abstract class BusEvent {}

class FetchAllBus extends BusEvent {}

class DemoSize extends BusEvent {}
