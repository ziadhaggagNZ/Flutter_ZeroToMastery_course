part of 'advicer_bloc.dart';

@immutable
sealed class AdvicerState extends Equatable {
    @override
  List<Object?> get props => [];
}

final class AdvicerInitial extends AdvicerState {}

 class AdvicerStateLooding extends AdvicerState {}

 class AdvicerStateLooded extends AdvicerState {
  final String advice;
  AdvicerStateLooded({required this.advice});
    @override
  List<Object?> get props => [advice];
}



 class AdvicerStateError extends AdvicerState {
    final String message;
  AdvicerStateError({required this.message});

    @override
  List<Object?> get props => [message];
 }
