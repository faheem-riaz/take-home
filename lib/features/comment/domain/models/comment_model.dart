import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_model.freezed.dart';
part 'comment_model.g.dart';

@freezed
class CommentModel with _$CommentModel {
  const factory CommentModel({
    required String content,
    required String id,
    @JsonKey(name: 'posted_at') required String postedAt,
    @JsonKey(name: 'project_id') String? projectId,
    @JsonKey(name: 'task_id') required String taskId,
  }) = _CommentModel;

  factory CommentModel.fromJson(Map<String, dynamic> json) => _$CommentModelFromJson(json);
}
