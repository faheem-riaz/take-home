// ignore_for_file: constant_identifier_names, non_constant_identifier_names

enum ConfigEnvironments { staging, production }

class AppConfig {
  static const String APP_NAME = 'Take Home';
  static const String APP_BASE_URL = 'api.todoist.com';
  static const String PATH = '/rest/v2/';
  static const String SYNC_API_PATH = '/sync/v9/sync';

  /// Added these contants because right now app have only 1 project and 3 sections
  /// We can add project features later in project. This is just an MVP.
  static const String PROJECT_ID = '2334377161';
  static const String TODO_ID = '157617396';
  static const String IN_PROGRESS_ID = '157617408';
  static const String DONE_ID = '157617418';
}
