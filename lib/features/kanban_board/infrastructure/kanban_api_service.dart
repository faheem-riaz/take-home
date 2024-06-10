import 'package:chopper/chopper.dart';

import 'package:injectable/injectable.dart';
import 'package:take_home/core/services/http/chopper_client.dart';
import 'package:take_home/features/kanban_board/infrastructure/kanban_converter.dart';

part 'kanban_api_service.chopper.dart';

@injectable
@ChopperApi()
abstract class KanbanAPIService extends ChopperService {
  @Get(path: 'tasks')
  Future<Response> getTasks();

  @Post(path: 'tasks')
  Future<Response> addTask(@Body() Map<String, dynamic> task);

  @Post(path: 'tasks/{id}')
  Future<Response> updateTask(@Path("id") String id, @Body() Map<String, dynamic> task);

  @Delete(path: 'tasks/{id}')
  Future<Response> deleteTask(@Path("id") String id);

  @Post(path: 'tasks/{id}/close', optionalBody: true)
  Future<Response> completeTask(@Path("id") String id);

  @factoryMethod
  static KanbanAPIService create() {
    final client = AppChopperClient.create(converter: KanbanConverter(), service: _$KanbanAPIService());
    return _$KanbanAPIService(client);
  }
}
