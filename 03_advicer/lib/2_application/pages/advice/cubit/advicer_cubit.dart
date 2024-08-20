import 'package:advicer/1_domain/failures/failures.dart';
import 'package:advicer/1_domain/usecases/advice_usecases.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'advicer_state.dart';

const GeneralFailureMessage = 'Ups ,something gone wrong. Please try again!';
const serverFailureMessage ='Ups ,API Error. Please try again!';
const casheFailureMessage ='Ups ,cache failed. Please try again!'; 
class AdvicerCubit extends Cubit<AdvicerCubtState> {
  AdvicerCubit() : super(AdvicerInitial());
  final AdviceUsecases adviceUsecases = AdviceUsecases();

  void adviceRequested() async {
    emit(AdvicerStateLooding());
    final failureOrAdvice = await adviceUsecases.getAdvice();
    failureOrAdvice.fold(
      (failure) => emit( AdvicerStateError(message: _mapFailureToMessage(failure) )),
      (advice) => emit(AdvicerStateLooded(advice: advice.advice)),
    );
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return serverFailureMessage;
      case CacheFailure:
        return casheFailureMessage;
      default:
        return GeneralFailureMessage;
    }
  }
}
