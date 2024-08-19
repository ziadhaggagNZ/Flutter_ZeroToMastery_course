import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'advicer_state.dart';

class AdvicerCubit extends Cubit<AdvicerCubtState> {
  AdvicerCubit() : super(AdvicerInitial());

  void adviceRequested() async {
      emit(AdvicerStateLooding());
      debugPrint("fake get advice triggered");
      await Future.delayed(const Duration(seconds: 3),() {},);
      debugPrint("got advice");
      emit(AdvicerStateLooded(advice: "fake advice to test bloc"));
      //emit(const AdvicerStateError(message: "error message"));
  }
}
