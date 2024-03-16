import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:flutter_projrcts/my_cubit/counter_screen_cubit.dart';
import 'package:flutter_projrcts/my_cubit/states1.dart';
import'package:bloc/bloc.dart';

class CounterCubit extends Cubit<CounterStates>{  //1
  CounterCubit():super(CounterInitState());

  //CounterCubit.get();
  
  static  CounterCubit get(BuildContext context){   //2
    return BlocProvider.of(context) ;
     }
  
int number =0;                                       //3
void increaseNumber(){
  number++;
  emit(CounterIncreaseNumber());
}
void decreaseNumber(){
  number--;
  emit(CounterDecreaseNumber());
}
}

// class MyBlocObserver extends BlocObserver {
//   @override
//   void onEvent(Bloc bloc, Object? event) {
//     super.onEvent(bloc, event);
//     // TODO: implement onEvent
//   }

//   @override
//   void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
//     // TODO: implement onError
//     super.onError(bloc, error, stackTrace);
//   }

//   @override
//   void onChange(BlocBase bloc, Change change) {
//     super.onChange(bloc, change);
//     // TODO: implement onChange
//   }

//   @override
//   void onTransition(Bloc bloc, Transition transition) {
//     super.onTransition(bloc, transition);
//     // TODO: implement onChange
//   }
// }