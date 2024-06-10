// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'completed_task_with_time.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CompletedTaskWithTime _$CompletedTaskWithTimeFromJson(
    Map<String, dynamic> json) {
  return _CompletedTaskWithTime.fromJson(json);
}

/// @nodoc
mixin _$CompletedTaskWithTime {
  String get taskId => throw _privateConstructorUsedError;
  String get sectionId => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get completedAt => throw _privateConstructorUsedError;
  int get timeSpent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompletedTaskWithTimeCopyWith<CompletedTaskWithTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompletedTaskWithTimeCopyWith<$Res> {
  factory $CompletedTaskWithTimeCopyWith(CompletedTaskWithTime value,
          $Res Function(CompletedTaskWithTime) then) =
      _$CompletedTaskWithTimeCopyWithImpl<$Res, CompletedTaskWithTime>;
  @useResult
  $Res call(
      {String taskId,
      String sectionId,
      String content,
      String completedAt,
      int timeSpent});
}

/// @nodoc
class _$CompletedTaskWithTimeCopyWithImpl<$Res,
        $Val extends CompletedTaskWithTime>
    implements $CompletedTaskWithTimeCopyWith<$Res> {
  _$CompletedTaskWithTimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? sectionId = null,
    Object? content = null,
    Object? completedAt = null,
    Object? timeSpent = null,
  }) {
    return _then(_value.copyWith(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      sectionId: null == sectionId
          ? _value.sectionId
          : sectionId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      completedAt: null == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as String,
      timeSpent: null == timeSpent
          ? _value.timeSpent
          : timeSpent // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompletedTaskWithTimeImplCopyWith<$Res>
    implements $CompletedTaskWithTimeCopyWith<$Res> {
  factory _$$CompletedTaskWithTimeImplCopyWith(
          _$CompletedTaskWithTimeImpl value,
          $Res Function(_$CompletedTaskWithTimeImpl) then) =
      __$$CompletedTaskWithTimeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String taskId,
      String sectionId,
      String content,
      String completedAt,
      int timeSpent});
}

/// @nodoc
class __$$CompletedTaskWithTimeImplCopyWithImpl<$Res>
    extends _$CompletedTaskWithTimeCopyWithImpl<$Res,
        _$CompletedTaskWithTimeImpl>
    implements _$$CompletedTaskWithTimeImplCopyWith<$Res> {
  __$$CompletedTaskWithTimeImplCopyWithImpl(_$CompletedTaskWithTimeImpl _value,
      $Res Function(_$CompletedTaskWithTimeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? sectionId = null,
    Object? content = null,
    Object? completedAt = null,
    Object? timeSpent = null,
  }) {
    return _then(_$CompletedTaskWithTimeImpl(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      sectionId: null == sectionId
          ? _value.sectionId
          : sectionId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      completedAt: null == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as String,
      timeSpent: null == timeSpent
          ? _value.timeSpent
          : timeSpent // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompletedTaskWithTimeImpl extends _CompletedTaskWithTime {
  _$CompletedTaskWithTimeImpl(
      {required this.taskId,
      required this.sectionId,
      required this.content,
      required this.completedAt,
      required this.timeSpent})
      : super._();

  factory _$CompletedTaskWithTimeImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompletedTaskWithTimeImplFromJson(json);

  @override
  final String taskId;
  @override
  final String sectionId;
  @override
  final String content;
  @override
  final String completedAt;
  @override
  final int timeSpent;

  @override
  String toString() {
    return 'CompletedTaskWithTime(taskId: $taskId, sectionId: $sectionId, content: $content, completedAt: $completedAt, timeSpent: $timeSpent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompletedTaskWithTimeImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.sectionId, sectionId) ||
                other.sectionId == sectionId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.timeSpent, timeSpent) ||
                other.timeSpent == timeSpent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, taskId, sectionId, content, completedAt, timeSpent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompletedTaskWithTimeImplCopyWith<_$CompletedTaskWithTimeImpl>
      get copyWith => __$$CompletedTaskWithTimeImplCopyWithImpl<
          _$CompletedTaskWithTimeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompletedTaskWithTimeImplToJson(
      this,
    );
  }
}

abstract class _CompletedTaskWithTime extends CompletedTaskWithTime {
  factory _CompletedTaskWithTime(
      {required final String taskId,
      required final String sectionId,
      required final String content,
      required final String completedAt,
      required final int timeSpent}) = _$CompletedTaskWithTimeImpl;
  _CompletedTaskWithTime._() : super._();

  factory _CompletedTaskWithTime.fromJson(Map<String, dynamic> json) =
      _$CompletedTaskWithTimeImpl.fromJson;

  @override
  String get taskId;
  @override
  String get sectionId;
  @override
  String get content;
  @override
  String get completedAt;
  @override
  int get timeSpent;
  @override
  @JsonKey(ignore: true)
  _$$CompletedTaskWithTimeImplCopyWith<_$CompletedTaskWithTimeImpl>
      get copyWith => throw _privateConstructorUsedError;
}
