import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserve implements BlocObserver {//check state is ok or not 
  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint('Chane=$change');//prefer debugprint in print
  }

  @override
  void onClose(BlocBase bloc) {

   debugPrint('Close=$bloc');
  }

  @override
  void onCreate(BlocBase bloc) {
   debugPrint('create=$bloc');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    // TODO: implement onError
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    // TODO: implement onEvent
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    // TODO: implement onTransition
  }
}
