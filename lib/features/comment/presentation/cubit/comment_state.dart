part of 'comment_cubit.dart';

@freezed
class CommentState with _$CommentState {
  const factory CommentState.initial() = _Initial;
  const factory CommentState.loading() = _Loading;
  const factory CommentState.loaded() = _Loaded;
  const factory CommentState.addingComment() = _AddingComment;
  const factory CommentState.error() = _Error;
}
