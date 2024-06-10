// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_errors.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$APIServerError {
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $APIServerErrorCopyWith<APIServerError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $APIServerErrorCopyWith<$Res> {
  factory $APIServerErrorCopyWith(
          APIServerError value, $Res Function(APIServerError) then) =
      _$APIServerErrorCopyWithImpl<$Res, APIServerError>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$APIServerErrorCopyWithImpl<$Res, $Val extends APIServerError>
    implements $APIServerErrorCopyWith<$Res> {
  _$APIServerErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$APIServerErrorImplCopyWith<$Res>
    implements $APIServerErrorCopyWith<$Res> {
  factory _$$APIServerErrorImplCopyWith(_$APIServerErrorImpl value,
          $Res Function(_$APIServerErrorImpl) then) =
      __$$APIServerErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$APIServerErrorImplCopyWithImpl<$Res>
    extends _$APIServerErrorCopyWithImpl<$Res, _$APIServerErrorImpl>
    implements _$$APIServerErrorImplCopyWith<$Res> {
  __$$APIServerErrorImplCopyWithImpl(
      _$APIServerErrorImpl _value, $Res Function(_$APIServerErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$APIServerErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$APIServerErrorImpl implements _APIServerError {
  _$APIServerErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'APIServerError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$APIServerErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$APIServerErrorImplCopyWith<_$APIServerErrorImpl> get copyWith =>
      __$$APIServerErrorImplCopyWithImpl<_$APIServerErrorImpl>(
          this, _$identity);
}

abstract class _APIServerError implements APIServerError {
  factory _APIServerError({required final String message}) =
      _$APIServerErrorImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$APIServerErrorImplCopyWith<_$APIServerErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
