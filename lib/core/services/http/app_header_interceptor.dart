import 'package:chopper/chopper.dart';

class AppHeaderInterceptor extends HeadersInterceptor {
  AppHeaderInterceptor()
      : super({
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          "Authorization": "Bearer 3aeb0f301a87efcd8c86d1d3a0cc2929be6b2e02",
        });
}
