import 'package:intl/intl.dart';
import 'package:take_home/core/enums/task_section.dart';

extension StringExtension on String {
  String ucFirst() {
    try {
      return this[0].toUpperCase() + substring(1).toLowerCase().replaceAll("_", " ");
    } catch (e) {
      return this;
    }
  }

  // capitalize first letter of each word
  String capitalize() {
    return split(' ').map((str) => str.ucFirst()).join(' ');
  }
}

extension NullableStringExtension on String? {
  bool get isNullOrEmpty => this == null || this! == 'null' || this!.isEmpty;
}

extension DurationExtension on Duration? {
  String formatTime() {
    if (this == null) return '';
    final hours = this!.inHours;
    final minutes = this!.inMinutes.remainder(60);
    final seconds = this!.inSeconds.remainder(60);

    String hoursStr = hours.toString().padLeft(2, '0');
    String minutesStr = minutes.toString().padLeft(2, '0');
    String secondsStr = seconds.toString().padLeft(2, '0');

    if (hours > 0) {
      return '$hoursStr:$minutesStr:$secondsStr';
    } else {
      return '$minutesStr:$secondsStr';
    }
  }
}

extension EDateTime on DateTime? {
  // Format DateTime object to "06:12:11 on 12 Feb 2024" format
  String formatUpdatedOn() {
    if (this == null) {
      return "--"; //
    } else {
      final formatter = DateFormat('HH:mm:ss on dd MMM yyyy');
      return formatter.format(this!);
    }
  }

  // Format DateTime object to "2023-12-12" format
  String formatDate() {
    if (this == null) {
      return "--";
    } else {
      final formatter = DateFormat('yyyy-MM-dd');
      return formatter.format(this!);
    }
  }
}

extension CustomName on TaskSection {
  String getName() {
    if (this == TaskSection.todo) {
      return 'To Do';
    } else if (this == TaskSection.inProgress) {
      return 'In Progress';
    } else {
      return 'Done';
    }
  }
}
