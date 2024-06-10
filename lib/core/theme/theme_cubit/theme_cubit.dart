import 'package:take_home/core/theme/app_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
part 'theme_state.dart';

@singleton
class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState(AppTheme.lightTheme));

  void changeTheme(ThemeMode themeMode) {
    emit(ThemeState(getThemeData(themeMode)));
  }

  ThemeData getThemeData(ThemeMode themeMode) {
    switch (themeMode) {
      case ThemeMode.light:
        return AppTheme.lightTheme;
      case ThemeMode.dark:
        return AppTheme.darkTheme;

      case ThemeMode.system:
        // Handle system theme if needed
        return AppTheme.lightTheme;
      default:
        return AppTheme.darkTheme;
    }
  }

  void getInitialTheme() {
    // Use your theme provider logic (e.g., AppTheme.light or AppTheme.dark)
    final initialTheme = AppTheme.lightTheme;
    emit(ThemeState(initialTheme));
  }
}
