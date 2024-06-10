import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';
import 'package:take_home/core/services/http/chopper_client.dart';
import 'package:take_home/features/kanban_board/infrastructure/kanban_converter.dart';

part 'comment_api_service.chopper.dart';

@injectable
@ChopperApi()
abstract class CommentAPIService extends ChopperService {
  @Get(path: 'comments')
  Future<Response> getComments(@Query('task_id') String taskId);

  @Post(path: 'comments')
  Future<Response> addComment(@Body() Map<String, dynamic> task);

  @factoryMethod
  static CommentAPIService create() {
    final client = AppChopperClient.create(converter: KanbanConverter(), service: _$CommentAPIService());
    return _$CommentAPIService(client);
  }
}
