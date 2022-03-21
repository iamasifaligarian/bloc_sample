part of 'counter_bloc.dart';

@immutable
abstract class CounterState {}

class CounterDataState extends CounterState {
  final int count;
  CounterDataState({required this.count});
}
