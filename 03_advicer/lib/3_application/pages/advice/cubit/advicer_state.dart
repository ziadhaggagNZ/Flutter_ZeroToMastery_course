part of 'advicer_cubit.dart';

sealed class AdvicerCubtState extends Equatable {
  const AdvicerCubtState();

  @override
  List<Object?> get props => [];
}

final class AdvicerInitial extends AdvicerCubtState {}

 class AdvicerStateLooding extends AdvicerCubtState {}

 class AdvicerStateLooded extends AdvicerCubtState {
  final String advice;
  const AdvicerStateLooded({required this.advice});
    @override
  List<Object?> get props => [advice];
}



 class AdvicerStateError extends AdvicerCubtState {
    final String message;
  const AdvicerStateError({required this.message});

    @override
  List<Object?> get props => [message];
 }

