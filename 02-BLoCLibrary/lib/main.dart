import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'ui/cubit/counter_cubit.dart';
import 'ui/view/home_view.dart';

void main() {
  runApp(BlocLibrary());
}

class BlocLibrary extends StatelessWidget {
  const BlocLibrary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeView(),
      ),
    );
  }
}
