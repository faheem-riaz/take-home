import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:take_home/features/comment/domain/comment_facade.dart';
import 'package:take_home/features/comment/domain/models/comment_model.dart';

part 'comment_state.dart';
part 'comment_cubit.freezed.dart';

@injectable
class CommentCubit extends Cubit<CommentState> {
  List<CommentModel> comments = [];
  ICommentFacade commentService;

  CommentCubit(this.commentService) : super(const CommentState.initial());

  void getAllComment(String taskId) async {
    emit(const CommentState.loading());

    final result = await commentService.getComments(taskId);
    result.fold((list) {
      comments.addAll(list);
      emit(const CommentState.loaded());
    }, (error) {
      emit(const CommentState.error());
    });
  }

  void addComment(String taskId, String content) async {
    emit(const CommentState.addingComment());
    final Map<String, dynamic> data = {
      'task_id': taskId,
      'content': content,
    };
    final result = await commentService.addComment(data);
    result.fold((data) {
      comments.add(data);
      emit(const CommentState.loaded());
    }, (error) {
      emit(const CommentState.error());
    });
  }
}
