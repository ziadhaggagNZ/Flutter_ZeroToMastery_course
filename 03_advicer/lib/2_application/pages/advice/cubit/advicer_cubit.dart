import 'package:advicer/1_domain/entities/advice_entity.dart';
import 'package:advicer/1_domain/usecases/advice_usecases.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'advicer_state.dart';

class AdvicerCubit extends Cubit<AdvicerCubtState> {
  AdvicerCubit() : super(AdvicerInitial());
  final AdviceUsecases adviceUsecases = AdviceUsecases();
  void adviceRequested() async {
    emit(AdvicerStateLooding());
    final AdviceEntity advice = await adviceUsecases.getAdvice();
    emit(AdvicerStateLooded(advice: advice.advice));
    //emit(const AdvicerStateError(message: "error message"));
  }
}
