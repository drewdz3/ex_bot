    import 'package:flutter_test/flutter_test.dart';
    import 'package:flutter_bloc/flutter_bloc.dart';
    import 'package:bloc_test/bloc_test.dart';

    // Simple test Cubit to verify the new Bloc version works
    class CounterCubit extends Cubit<int> {
      CounterCubit() : super(0);

      void increment() => emit(state + 1);
      void decrement() => emit(state - 1);
    }

    void main() {
      group('Bloc Upgrade Verification Tests', () {
        late CounterCubit counterCubit;

        setUp(() {
          counterCubit = CounterCubit();
        });

        tearDown(() {
          counterCubit.close();
        });

        test('Cubit initial state is correct', () {
          expect(counterCubit.state, 0);
        });

        blocTest<CounterCubit, int>(
          'emits [1] when increment is called',
          build: () => counterCubit,
          act: (cubit) => cubit.increment(),
          expect: () => [1],
        );

        blocTest<CounterCubit, int>(
          'emits [1, 0] when increment then decrement',
          build: () => counterCubit,
          act: (cubit) {
            cubit.increment();
            cubit.decrement();
          },
          expect: () => [1, 0],
        );

        test('Bloc version information', () {
          // This test just verifies the packages are properly imported
          expect(counterCubit, isA<Cubit<int>>());
          expect(counterCubit, isA<BlocBase<int>>());
        });
      });
    }
