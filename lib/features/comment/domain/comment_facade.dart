import 'package:fpdart/fpdart.dart';
import 'package:take_home/core/errors/network_errors.dart';
import 'package:take_home/features/comment/domain/models/comment_model.dart';

abstract class ICommentFacade {
  Future<Either<List<CommentModel>, APIServerError>> getComments(String taskId);
  Future<Either<CommentModel, APIServerError>> addComment(Map<String, dynamic> data);
}
