import 'dart:async';
import 'dart:convert';

import 'package:take_home/core/errors/network_errors.dart';
import 'package:take_home/core/services/http/app_base_converter.dart';
import 'package:take_home/core/services/logging/logger.dart';
import 'package:chopper/chopper.dart';

class ErrorResponseConverter extends AppBaseConverter<APIServerError> implements ErrorConverter {
  @override
  APIServerError parseJSONToModel(Map<String, dynamic> response) {
    if (response.containsKey("errors")) {
      final errors = response['errors'];
      if (errors is List) {
        return APIServerError(message: errors.first);
      } else if (errors is String) {
        return APIServerError(message: response['messages']);
      }
    }
    return APIServerError(message: "Unknow Server Error has occurred");
  }

  @override
  FutureOr<Response> convertError<BodyType, InnerType>(Response response) {
    final log = getLogger("ErrorResponseConverter");
    final mapData = json.decode(response.body);
    final model = parseJSONToModel(mapData);
    log.i(mapData.toString());
    return response.copyWith<BodyType>(body: model as BodyType);
  }
}
