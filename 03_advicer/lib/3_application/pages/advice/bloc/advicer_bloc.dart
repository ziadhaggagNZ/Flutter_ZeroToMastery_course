import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'advicer_event.dart';
part 'advicer_state.dart';

class AdvicerBloc extends Bloc<AdvicerEvent, AdvicerState> {
  AdvicerBloc() : super(AdvicerInitial()) {
    on<AdviceRequestedEvent>((event, emit) async {
      emit(AdvicerStateLooding());
      debugPrint("fake get advice triggered");
      await Future.delayed(const Duration(seconds: 3),() {},);
      debugPrint("got advice");
      emit(AdvicerStateLooded(advice: "fake advice to test bloc"));
      //emit(AdvicerStateError(message: "error message"));
    });
  }
}
