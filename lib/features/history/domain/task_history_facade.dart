import 'package:fpdart/fpdart.dart' as fp;
import 'package:take_home/core/errors/network_errors.dart';
import 'package:take_home/features/kanban_board/domain/model/kanban_model.dart';

abstract class IHistoryFacade {
  Future<fp.Either<List<Task>, APIServerError>> getCompletedTask();
}
