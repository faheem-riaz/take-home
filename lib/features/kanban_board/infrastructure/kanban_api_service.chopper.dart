// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kanban_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$KanbanAPIService extends KanbanAPIService {
  _$KanbanAPIService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = KanbanAPIService;

  @override
  Future<Response<dynamic>> getTasks() {
    final Uri $url = Uri.parse('tasks');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> addTask(Map<String, dynamic> task) {
    final Uri $url = Uri.parse('tasks');
    final $body = task;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> updateTask(
    String id,
    Map<String, dynamic> task,
  ) {
    final Uri $url = Uri.parse('tasks/${id}');
    final $body = task;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> deleteTask(String id) {
    final Uri $url = Uri.parse('tasks/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> completeTask(String id) {
    final Uri $url = Uri.parse('tasks/${id}/close');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
