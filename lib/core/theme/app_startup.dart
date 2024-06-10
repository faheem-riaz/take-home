import 'package:take_home/core/di/service_locator.dart';

Future<void> runAppStartupLogic() async {
  await configureDependencies();
}
