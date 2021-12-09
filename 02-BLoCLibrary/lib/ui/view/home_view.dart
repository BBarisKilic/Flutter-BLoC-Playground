import 'package:flutter/material.dart';
import 'package:flutter_bloc_library/ui/cubit/counter_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bloc Playground")),
      body: Center(
        child: Row(
          children: [
            IconButton(
              onPressed: () =>
                  BlocProvider.of<CounterCubit>(context).decrement(),
              icon: Icon(Icons.remove),
            ),
            BlocConsumer<CounterCubit, CounterState>(
              listener: (context, state) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content:
                        Text(state.wasIncrement ? "Increment!" : "Decrement!"),
                    duration: const Duration(milliseconds: 500),
                  ),
                );
              },
              builder: (context, state) {
                return Text(state.counter.toString());
              },
            ),
            IconButton(
              onPressed: () =>
                  BlocProvider.of<CounterCubit>(context).increment(),
              icon: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
