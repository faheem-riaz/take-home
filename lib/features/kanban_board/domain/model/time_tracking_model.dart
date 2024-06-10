import 'package:hive/hive.dart';

part 'time_tracking_model.g.dart';

@HiveType(typeId: 1)
class TimeTrackingModel extends HiveObject {
  @HiveField(0)
  String taskId;

  @HiveField(1)
  String sectionId;

  @HiveField(2)
  int totalTimeSpent; // in seconds

  @HiveField(3)
  DateTime? startTime;

  TimeTrackingModel({
    required this.taskId,
    required this.sectionId,
    this.totalTimeSpent = 0,
    this.startTime,
  });
}
