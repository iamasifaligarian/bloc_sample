import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterDataState(count: 0)) {
    on<InitialCounterEvent>((event, emit) => emit(CounterDataState(count: 0)));

    on<IncrementCounterEvent>(
        (event, emit) => emit(CounterDataState(count: event.count + 1)));
    on<DecrementCounterEvent>((event, emit) {
      if (event.count > 0) {
        emit(CounterDataState(count: event.count - 1));
      }
    });
  }

  // @override
  // Stream<CounterState> mapEventToState(CounterEvent event) async* {
  //   if (event is IncrementCounterEvent) {
  //     yield CounterDataState(count: event.count + 1);
  //   } else if (event is DecrementCounterEvent) {
  //     yield CounterDataState(count: event.count - 1);
  //   }
  // }
}
