import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:take_home/features/kanban_board/domain/model/time_tracking_model.dart';

part 'timer_state.dart';
part 'timer_cubit.freezed.dart';

class TimerCubit extends Cubit<TimerState> {
  late Box<TimeTrackingModel> taskTimeTrackingBox;
  late TimeTrackingModel timeTracking;
  Timer? _timer;
  TimerCubit(this.timeTracking) : super(TimerState.initial(timeTracking.totalTimeSpent)) {
    taskTimeTrackingBox = Hive.box<TimeTrackingModel>('task_time_tracking');
  }

  void startTimer() {
    if (timeTracking.startTime == null) {
      timeTracking.startTime = DateTime.now();
      timeTracking.save();
    }

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      final secondsSpent = DateTime.now().difference(timeTracking.startTime!).inSeconds;
      emit(TimerState.running(secondsSpent));
    });
  }

  void stopTimer() {
    if (timeTracking.startTime != null) {
      final secondsSpent = DateTime.now().difference(timeTracking.startTime!).inSeconds;
      timeTracking.totalTimeSpent += secondsSpent;
      timeTracking.startTime = null;
      timeTracking.save();
      emit(TimerState.stopped(timeTracking.totalTimeSpent));
    }

    _timer?.cancel();
  }
}
