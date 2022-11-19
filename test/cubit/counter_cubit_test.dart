import 'package:bloc_concepts/cubit/counter_cubit.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('CounterCubit', () {
    CounterCubit? counterCubit;
    setUp(() {
      counterCubit = CounterCubit();
    });
    tearDown(() {
      counterCubit!.close();
    });

    test(
        'The initial state for the CounterCubit is CounterState(CounterValue:0)',
        () {
      expect(counterCubit!.state, CounterState(counterValue: 0));
    });
    blocTest(
      'emits [MyState] when MyEvent is added.',
      build: () => CounterCubit(),
      act: (bloc) => bloc.increment(),
      expect: () => [
        CounterState(counterValue: 1),
      ],
    );
  });
}
