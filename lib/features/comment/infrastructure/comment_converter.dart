import 'package:take_home/core/services/http/app_base_converter.dart';

class CommentConverter extends AppBaseConverter {
  @override
  parseJSONToModel(Map<String, dynamic> response) {
    return response;
  }
}
