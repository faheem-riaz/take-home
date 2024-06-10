import 'dart:convert';
import 'package:fpdart/fpdart.dart' as fp;
import 'package:injectable/injectable.dart';
import 'package:take_home/core/constants/app_config.dart';
import 'package:take_home/core/errors/network_errors.dart';
import 'package:http/http.dart' as http;
import 'package:take_home/core/services/logging/logger.dart';
import 'package:take_home/features/kanban_board/domain/kanban_facade.dart';
import 'package:take_home/features/kanban_board/domain/model/kanban_model.dart';
import 'package:take_home/features/kanban_board/infrastructure/kanban_api_service.dart';

@Injectable(as: IKanbanFacade)
class KanbanService extends IKanbanFacade {
  final KanbanAPIService apiService;
  final _logger = getLogger('KanbanService');
  KanbanService(this.apiService);

  @override
  Future<fp.Either<Task, APIServerError>> addTask(Map<String, dynamic> task) async {
    final response = await apiService.addTask(task);
    _logger.i(response.body);
    if (response.isSuccessful) {
      return fp.Left(Task.fromJson(response.body));
    } else {
      return fp.Right(APIServerError(message: "Server Error"));
    }
  }

  @override
  Future<fp.Either<bool, APIServerError>> deleteTask(String id) async {
    final response = await apiService.deleteTask(id);
    if (response.isSuccessful) {
      return const fp.Left(true);
    } else {
      return fp.Right(APIServerError(message: "Server Error"));
    }
  }

  @override
  void getTask(String id) {}

  @override
  Future<fp.Either<List<Task>, APIServerError>> getTasks() async {
    final List<Task> tasks = [];
    final response = await apiService.getTasks();
    _logger.i(jsonDecode(response.body));
    final data = jsonDecode(response.body);
    if (data is List) {
      for (var element in data) {
        tasks.add(Task.fromJson(element));
      }
      return fp.Left(tasks);
    } else {
      return fp.Right(APIServerError(message: "Server error"));
    }
  }

  @override
  Future<fp.Either<Task, APIServerError>> updateTask(Map<String, dynamic> task) async {
    _logger.i(task['id']);
    final response = await apiService.updateTask(task['id'], task);

    _logger.i(response.body);
    if (response.isSuccessful) {
      return fp.Left(Task.fromJson(response.body));
    } else {
      return fp.Right(APIServerError(message: "Server Error"));
    }
  }

  @override
  Future<fp.Either<bool, APIServerError>> updateTaskSection(Map<String, dynamic> task) async {
    final result = await updateTaskSectionCustom(task);
    if (result) {
      return const fp.Left(true);
    } else {
      return fp.Right(APIServerError(message: "Network Error"));
    }
  }

  @override
  Future<fp.Either<bool, APIServerError>> completeTask(String id) async {
    final response = await apiService.completeTask(id);
    if (response.statusCode == 204) {
      return const fp.Left(true);
    } else {
      return fp.Right(APIServerError(message: "Server Error"));
    }
  }

  Future<bool> updateTaskSectionCustom(Map<String, dynamic> task) async {
    final url = Uri.https(AppConfig.APP_BASE_URL, AppConfig.SYNC_API_PATH);
    final headers = {
      'Authorization': 'Bearer a53689ecb3497b2e48f8b0db5bf18e31ce959ae8',
      'Content-Type': 'application/x-www-form-urlencoded',
    };

    final response = await http.post(
      url,
      headers: headers,
      body: task,
    );

    if (response.statusCode == 200) {
      _logger.i('Request successful');
      _logger.i(response.body);

      return true;
    } else {
      _logger.e('Request failed with status: ${response.statusCode}');
      _logger.w(response.body);
      return false;
    }
  }
}
