import 'package:flutter/material.dart';
import 'package:basketball_app_count/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterBIncrementState());

  int TeamApoints = 0;

  int TeamBpoints = 0;

  void TeamIncrement({required String team,required int buttonNumber}) {
   if(team == 'A'){
     TeamApoints += buttonNumber;
    emit(CounterAIncrementState());
   }else{
      TeamBpoints += buttonNumber;
    emit(CounterBIncrementState());
   }
  }
}
