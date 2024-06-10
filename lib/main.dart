import 'package:hive_flutter/hive_flutter.dart';
import 'package:take_home/app.dart';
import 'package:take_home/core/di/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:take_home/features/kanban_board/domain/model/time_tracking_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  // Register the adapters
  Hive.registerAdapter(TimeTrackingModelAdapter());

  // Open the box
  await Hive.openBox<TimeTrackingModel>('task_time_tracking');
  await configureDependencies();
  runApp(const App());
}
