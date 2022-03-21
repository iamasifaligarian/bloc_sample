import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/counter_bloc.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state) {
              if (state is CounterDataState) {
                return Column(children: [
                  ElevatedButton(
                      onPressed: () {
                        context
                            .read<CounterBloc>()
                            .add(IncrementCounterEvent(count: state.count));
                      },
                      child: const Text('+')),
                  Text(state.count.toString()),
                  ElevatedButton(
                      onPressed: () {
                        context
                            .read<CounterBloc>()
                            .add(DecrementCounterEvent(count: state.count));
                      },
                      child: const Text('-'))
                ]);
              }
              return Container();
            },
          ),
        ),
      ),
    );
  }
}
