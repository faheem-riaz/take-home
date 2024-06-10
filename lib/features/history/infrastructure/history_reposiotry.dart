import 'dart:convert';
import 'dart:developer';
import 'package:take_home/features/history/domain/model/completed_task.dart';
import 'package:http/http.dart' as http;

class HistoryReposiotry {
  static const String _apiUrl = 'https://api.todoist.com/sync/v9/completed/get_all';
  static const String _apiToken = 'a53689ecb3497b2e48f8b0db5bf18e31ce959ae8';

  static Future<List<CompletedTaskItem>> getCompletedTasks() async {
    final response = await http.get(
      Uri.parse(_apiUrl),
      headers: {
        'Authorization': 'Bearer $_apiToken',
      },
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final items = data['items'] as List;
      log(items.toString());
      List<CompletedTaskItem> tasks = items.map((item) => CompletedTaskItem.fromJson(item)).toList();
      return tasks;
    } else {
      throw Exception('Failed to load completed tasks');
    }
  }
}
