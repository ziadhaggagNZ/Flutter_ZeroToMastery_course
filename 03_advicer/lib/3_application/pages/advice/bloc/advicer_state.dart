part of 'advicer_bloc.dart';

@immutable
sealed class AdvicerState {}

final class AdvicerInitial extends AdvicerState {}

 class AdvicerStateLooding extends AdvicerState {}

 class AdvicerStateLooded extends AdvicerState {
  final String advice;
  AdvicerStateLooded({required this.advice});
}



 class AdvicerStateError extends AdvicerState {
    final String message;
  AdvicerStateError({required this.message});
 }
