import 'package:bloc/bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(counter: 0, wasIncrement: false));

  void increment() =>
      emit(CounterState(counter: state.counter + 1, wasIncrement: true));

  void decrement() =>
      emit(CounterState(counter: state.counter - 1, wasIncrement: false));
}
