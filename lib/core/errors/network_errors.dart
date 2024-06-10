import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_errors.freezed.dart';

@freezed
class APIServerError with _$APIServerError {
  factory APIServerError({required final String message}) = _APIServerError;
}
