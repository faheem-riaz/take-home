import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:take_home/features/history/domain/model/completed_task_with_time.dart';

part 'task_history_state.freezed.dart';

@freezed
class TaskHistoryState with _$TaskHistoryState {
  const factory TaskHistoryState.initial() = _Initial;
  const factory TaskHistoryState.loading() = _Loading;
  const factory TaskHistoryState.loaded(List<CompletedTaskWithTime> tasks) = _Loaded;
  const factory TaskHistoryState.error(String error) = _Error;
}
