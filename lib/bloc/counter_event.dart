part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class InitialCounterEvent extends CounterEvent {}

class IncrementCounterEvent extends CounterEvent {
  final int count;
  IncrementCounterEvent({required this.count});
}

class DecrementCounterEvent extends CounterEvent {
  final int count;
  DecrementCounterEvent({required this.count});
}
