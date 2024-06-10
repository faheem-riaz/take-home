// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$CommentAPIService extends CommentAPIService {
  _$CommentAPIService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = CommentAPIService;

  @override
  Future<Response<dynamic>> getComments(String taskId) {
    final Uri $url = Uri.parse('comments');
    final Map<String, dynamic> $params = <String, dynamic>{'task_id': taskId};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> addComment(Map<String, dynamic> task) {
    final Uri $url = Uri.parse('comments');
    final $body = task;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
