part of 'advicer_bloc.dart';

@immutable
sealed class AdvicerEvent extends Equatable {
    @override
  List<Object?> get props => [];
}

class AdviceRequestedEvent extends AdvicerEvent {

}
