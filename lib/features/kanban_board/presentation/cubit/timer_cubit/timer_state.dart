part of 'timer_cubit.dart';

@freezed
class TimerState with _$TimerState {
  const factory TimerState.initial(int timeSpent) = TimerInitial;
  const factory TimerState.running(int timeSpent) = TimerRunning;
  const factory TimerState.stopped(int timeSpent) = TimerStopped;
}
