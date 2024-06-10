import 'dart:convert';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:take_home/core/errors/network_errors.dart';
import 'package:take_home/core/services/logging/logger.dart';
import 'package:take_home/features/comment/domain/comment_facade.dart';
import 'package:take_home/features/comment/domain/models/comment_model.dart';
import 'package:take_home/features/comment/infrastructure/comment_api_service.dart';

@Injectable(as: ICommentFacade)
class CommentService extends ICommentFacade {
  final CommentAPIService apiService;
  final _logger = getLogger('CommentService');
  CommentService(this.apiService);

  @override
  Future<Either<CommentModel, APIServerError>> addComment(Map<String, dynamic> data) async {
    final response = await apiService.addComment(data);
    _logger.i(response.body);
    if (response.isSuccessful) {
      return Left(CommentModel.fromJson(response.body));
    } else {
      return Right(APIServerError(message: "Server Error"));
    }
  }

  @override
  Future<Either<List<CommentModel>, APIServerError>> getComments(String taskId) async {
    final List<CommentModel> comments = [];
    final response = await apiService.getComments(taskId);
    _logger.i(jsonDecode(response.body));
    final data = jsonDecode(response.body);
    if (data is List) {
      for (var element in data) {
        comments.add(CommentModel.fromJson(element));
      }
      return Left(comments);
    } else {
      return Right(APIServerError(message: "Server error"));
    }
  }
}
