import 'package:take_home/core/constants/app_config.dart';
import 'package:take_home/core/services/http/app_header_interceptor.dart';
import 'package:take_home/core/services/http/error_converter.dart';
import 'package:chopper/chopper.dart';

base class AppChopperClient extends ChopperClient {
  static ChopperClient create({required ChopperService service, required Converter converter, bool isMove = false}) {
    return ChopperClient(
        baseUrl: Uri.https(AppConfig.APP_BASE_URL, isMove ? AppConfig.SYNC_API_PATH : AppConfig.PATH),
        services: [
          service,
        ],
        converter: converter,
        errorConverter: ErrorResponseConverter(),
        interceptors: [
          AppHeaderInterceptor(),
        ]);
  }
}
