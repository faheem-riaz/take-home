import 'package:fpdart/fpdart.dart' as fp;
import 'package:take_home/core/errors/network_errors.dart';
import 'package:take_home/features/kanban_board/domain/model/kanban_model.dart';

abstract class IKanbanFacade {
  Future<fp.Either<Task, APIServerError>> addTask(Map<String, dynamic> task);
  Future<fp.Either<Task, APIServerError>> updateTask(Map<String, dynamic> task);
  Future<fp.Either<bool, APIServerError>> updateTaskSection(Map<String, dynamic> task);
  Future<fp.Either<bool, APIServerError>> completeTask(String id);
  Future<fp.Either<bool, APIServerError>> deleteTask(String id);
  Future<fp.Either<List<Task>, APIServerError>> getTasks();
  void getTask(String id);
}
