// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_tracking_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TimeTrackingModelAdapter extends TypeAdapter<TimeTrackingModel> {
  @override
  final int typeId = 1;

  @override
  TimeTrackingModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TimeTrackingModel(
      taskId: fields[0] as String,
      sectionId: fields[1] as String,
      totalTimeSpent: fields[2] as int,
      startTime: fields[3] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, TimeTrackingModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.taskId)
      ..writeByte(1)
      ..write(obj.sectionId)
      ..writeByte(2)
      ..write(obj.totalTimeSpent)
      ..writeByte(3)
      ..write(obj.startTime);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TimeTrackingModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
