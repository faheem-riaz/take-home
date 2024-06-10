import 'dart:ui';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:take_home/core/services/localization/language_storage_service.dart';

@injectable
class LanguageCubit extends Cubit<Locale?> {
  final LanguageStorageService languageStorageService;
  LanguageCubit(this.languageStorageService) : super(null);

  Future<void> getLanguage() async {
    final languageCode = await languageStorageService.getLanguage();
    if (languageCode != null) {
      emit(Locale(languageCode));
    }
  }

  Future<void> updateLanguage(final Locale locale) async {
    languageStorageService.saveLanguage(languageCode: locale.languageCode);
    emit(locale);
  }
}
