// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kanban_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Task _$TaskFromJson(Map<String, dynamic> json) {
  return _Task.fromJson(json);
}

/// @nodoc
mixin _$Task {
  @JsonKey(name: "comment_count")
  int get commentCount => throw _privateConstructorUsedError;
  @JsonKey(name: "is_completed")
  bool get isCompleted => throw _privateConstructorUsedError;
  @JsonKey(name: "section_id")
  String get sectionId => throw _privateConstructorUsedError;
  @JsonKey(name: "project_id")
  String get projectId => throw _privateConstructorUsedError;
  @JsonKey(name: "content")
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "due")
  Due get due => throw _privateConstructorUsedError;
  @JsonKey(name: "duration")
  TaskDuration get duration => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "priority")
  int get priority => throw _privateConstructorUsedError;
  @JsonKey(name: "url")
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res, Task>;
  @useResult
  $Res call(
      {@JsonKey(name: "comment_count") int commentCount,
      @JsonKey(name: "is_completed") bool isCompleted,
      @JsonKey(name: "section_id") String sectionId,
      @JsonKey(name: "project_id") String projectId,
      @JsonKey(name: "content") String content,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "due") Due due,
      @JsonKey(name: "duration") TaskDuration duration,
      @JsonKey(name: "id") String id,
      @JsonKey(name: "priority") int priority,
      @JsonKey(name: "url") String url});

  $DueCopyWith<$Res> get due;
  $TaskDurationCopyWith<$Res> get duration;
}

/// @nodoc
class _$TaskCopyWithImpl<$Res, $Val extends Task>
    implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentCount = null,
    Object? isCompleted = null,
    Object? sectionId = null,
    Object? projectId = null,
    Object? content = null,
    Object? description = null,
    Object? due = null,
    Object? duration = null,
    Object? id = null,
    Object? priority = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      commentCount: null == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      sectionId: null == sectionId
          ? _value.sectionId
          : sectionId // ignore: cast_nullable_to_non_nullable
              as String,
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      due: null == due
          ? _value.due
          : due // ignore: cast_nullable_to_non_nullable
              as Due,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as TaskDuration,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DueCopyWith<$Res> get due {
    return $DueCopyWith<$Res>(_value.due, (value) {
      return _then(_value.copyWith(due: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskDurationCopyWith<$Res> get duration {
    return $TaskDurationCopyWith<$Res>(_value.duration, (value) {
      return _then(_value.copyWith(duration: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TaskImplCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$TaskImplCopyWith(
          _$TaskImpl value, $Res Function(_$TaskImpl) then) =
      __$$TaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "comment_count") int commentCount,
      @JsonKey(name: "is_completed") bool isCompleted,
      @JsonKey(name: "section_id") String sectionId,
      @JsonKey(name: "project_id") String projectId,
      @JsonKey(name: "content") String content,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "due") Due due,
      @JsonKey(name: "duration") TaskDuration duration,
      @JsonKey(name: "id") String id,
      @JsonKey(name: "priority") int priority,
      @JsonKey(name: "url") String url});

  @override
  $DueCopyWith<$Res> get due;
  @override
  $TaskDurationCopyWith<$Res> get duration;
}

/// @nodoc
class __$$TaskImplCopyWithImpl<$Res>
    extends _$TaskCopyWithImpl<$Res, _$TaskImpl>
    implements _$$TaskImplCopyWith<$Res> {
  __$$TaskImplCopyWithImpl(_$TaskImpl _value, $Res Function(_$TaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentCount = null,
    Object? isCompleted = null,
    Object? sectionId = null,
    Object? projectId = null,
    Object? content = null,
    Object? description = null,
    Object? due = null,
    Object? duration = null,
    Object? id = null,
    Object? priority = null,
    Object? url = null,
  }) {
    return _then(_$TaskImpl(
      commentCount: null == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      sectionId: null == sectionId
          ? _value.sectionId
          : sectionId // ignore: cast_nullable_to_non_nullable
              as String,
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      due: null == due
          ? _value.due
          : due // ignore: cast_nullable_to_non_nullable
              as Due,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as TaskDuration,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskImpl extends _Task {
  const _$TaskImpl(
      {@JsonKey(name: "comment_count") required this.commentCount,
      @JsonKey(name: "is_completed") required this.isCompleted,
      @JsonKey(name: "section_id") required this.sectionId,
      @JsonKey(name: "project_id") required this.projectId,
      @JsonKey(name: "content") required this.content,
      @JsonKey(name: "description") required this.description,
      @JsonKey(name: "due") required this.due,
      @JsonKey(name: "duration") required this.duration,
      @JsonKey(name: "id") required this.id,
      @JsonKey(name: "priority") required this.priority,
      @JsonKey(name: "url") required this.url})
      : super._();

  factory _$TaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskImplFromJson(json);

  @override
  @JsonKey(name: "comment_count")
  final int commentCount;
  @override
  @JsonKey(name: "is_completed")
  final bool isCompleted;
  @override
  @JsonKey(name: "section_id")
  final String sectionId;
  @override
  @JsonKey(name: "project_id")
  final String projectId;
  @override
  @JsonKey(name: "content")
  final String content;
  @override
  @JsonKey(name: "description")
  final String description;
  @override
  @JsonKey(name: "due")
  final Due due;
  @override
  @JsonKey(name: "duration")
  final TaskDuration duration;
  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "priority")
  final int priority;
  @override
  @JsonKey(name: "url")
  final String url;

  @override
  String toString() {
    return 'Task(commentCount: $commentCount, isCompleted: $isCompleted, sectionId: $sectionId, projectId: $projectId, content: $content, description: $description, due: $due, duration: $duration, id: $id, priority: $priority, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskImpl &&
            (identical(other.commentCount, commentCount) ||
                other.commentCount == commentCount) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.sectionId, sectionId) ||
                other.sectionId == sectionId) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.due, due) || other.due == due) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      commentCount,
      isCompleted,
      sectionId,
      projectId,
      content,
      description,
      due,
      duration,
      id,
      priority,
      url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      __$$TaskImplCopyWithImpl<_$TaskImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskImplToJson(
      this,
    );
  }
}

abstract class _Task extends Task {
  const factory _Task(
      {@JsonKey(name: "comment_count") required final int commentCount,
      @JsonKey(name: "is_completed") required final bool isCompleted,
      @JsonKey(name: "section_id") required final String sectionId,
      @JsonKey(name: "project_id") required final String projectId,
      @JsonKey(name: "content") required final String content,
      @JsonKey(name: "description") required final String description,
      @JsonKey(name: "due") required final Due due,
      @JsonKey(name: "duration") required final TaskDuration duration,
      @JsonKey(name: "id") required final String id,
      @JsonKey(name: "priority") required final int priority,
      @JsonKey(name: "url") required final String url}) = _$TaskImpl;
  const _Task._() : super._();

  factory _Task.fromJson(Map<String, dynamic> json) = _$TaskImpl.fromJson;

  @override
  @JsonKey(name: "comment_count")
  int get commentCount;
  @override
  @JsonKey(name: "is_completed")
  bool get isCompleted;
  @override
  @JsonKey(name: "section_id")
  String get sectionId;
  @override
  @JsonKey(name: "project_id")
  String get projectId;
  @override
  @JsonKey(name: "content")
  String get content;
  @override
  @JsonKey(name: "description")
  String get description;
  @override
  @JsonKey(name: "due")
  Due get due;
  @override
  @JsonKey(name: "duration")
  TaskDuration get duration;
  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "priority")
  int get priority;
  @override
  @JsonKey(name: "url")
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Due _$DueFromJson(Map<String, dynamic> json) {
  return _Due.fromJson(json);
}

/// @nodoc
mixin _$Due {
  @JsonKey(name: "date")
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(name: "is_recurring")
  bool get isRecurring => throw _privateConstructorUsedError;
  @JsonKey(name: "string")
  String get string => throw _privateConstructorUsedError;
  @JsonKey(name: "lang")
  String get lang => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DueCopyWith<Due> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DueCopyWith<$Res> {
  factory $DueCopyWith(Due value, $Res Function(Due) then) =
      _$DueCopyWithImpl<$Res, Due>;
  @useResult
  $Res call(
      {@JsonKey(name: "date") DateTime date,
      @JsonKey(name: "is_recurring") bool isRecurring,
      @JsonKey(name: "string") String string,
      @JsonKey(name: "lang") String lang});
}

/// @nodoc
class _$DueCopyWithImpl<$Res, $Val extends Due> implements $DueCopyWith<$Res> {
  _$DueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? isRecurring = null,
    Object? string = null,
    Object? lang = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isRecurring: null == isRecurring
          ? _value.isRecurring
          : isRecurring // ignore: cast_nullable_to_non_nullable
              as bool,
      string: null == string
          ? _value.string
          : string // ignore: cast_nullable_to_non_nullable
              as String,
      lang: null == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DueImplCopyWith<$Res> implements $DueCopyWith<$Res> {
  factory _$$DueImplCopyWith(_$DueImpl value, $Res Function(_$DueImpl) then) =
      __$$DueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "date") DateTime date,
      @JsonKey(name: "is_recurring") bool isRecurring,
      @JsonKey(name: "string") String string,
      @JsonKey(name: "lang") String lang});
}

/// @nodoc
class __$$DueImplCopyWithImpl<$Res> extends _$DueCopyWithImpl<$Res, _$DueImpl>
    implements _$$DueImplCopyWith<$Res> {
  __$$DueImplCopyWithImpl(_$DueImpl _value, $Res Function(_$DueImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? isRecurring = null,
    Object? string = null,
    Object? lang = null,
  }) {
    return _then(_$DueImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isRecurring: null == isRecurring
          ? _value.isRecurring
          : isRecurring // ignore: cast_nullable_to_non_nullable
              as bool,
      string: null == string
          ? _value.string
          : string // ignore: cast_nullable_to_non_nullable
              as String,
      lang: null == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DueImpl implements _Due {
  const _$DueImpl(
      {@JsonKey(name: "date") required this.date,
      @JsonKey(name: "is_recurring") required this.isRecurring,
      @JsonKey(name: "string") required this.string,
      @JsonKey(name: "lang") required this.lang});

  factory _$DueImpl.fromJson(Map<String, dynamic> json) =>
      _$$DueImplFromJson(json);

  @override
  @JsonKey(name: "date")
  final DateTime date;
  @override
  @JsonKey(name: "is_recurring")
  final bool isRecurring;
  @override
  @JsonKey(name: "string")
  final String string;
  @override
  @JsonKey(name: "lang")
  final String lang;

  @override
  String toString() {
    return 'Due(date: $date, isRecurring: $isRecurring, string: $string, lang: $lang)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DueImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.isRecurring, isRecurring) ||
                other.isRecurring == isRecurring) &&
            (identical(other.string, string) || other.string == string) &&
            (identical(other.lang, lang) || other.lang == lang));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, isRecurring, string, lang);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DueImplCopyWith<_$DueImpl> get copyWith =>
      __$$DueImplCopyWithImpl<_$DueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DueImplToJson(
      this,
    );
  }
}

abstract class _Due implements Due {
  const factory _Due(
      {@JsonKey(name: "date") required final DateTime date,
      @JsonKey(name: "is_recurring") required final bool isRecurring,
      @JsonKey(name: "string") required final String string,
      @JsonKey(name: "lang") required final String lang}) = _$DueImpl;

  factory _Due.fromJson(Map<String, dynamic> json) = _$DueImpl.fromJson;

  @override
  @JsonKey(name: "date")
  DateTime get date;
  @override
  @JsonKey(name: "is_recurring")
  bool get isRecurring;
  @override
  @JsonKey(name: "string")
  String get string;
  @override
  @JsonKey(name: "lang")
  String get lang;
  @override
  @JsonKey(ignore: true)
  _$$DueImplCopyWith<_$DueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TaskDuration _$TaskDurationFromJson(Map<String, dynamic> json) {
  return _TaskDuration.fromJson(json);
}

/// @nodoc
mixin _$TaskDuration {
  @JsonKey(name: "amount")
  int get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "unit")
  String get unit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskDurationCopyWith<TaskDuration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskDurationCopyWith<$Res> {
  factory $TaskDurationCopyWith(
          TaskDuration value, $Res Function(TaskDuration) then) =
      _$TaskDurationCopyWithImpl<$Res, TaskDuration>;
  @useResult
  $Res call(
      {@JsonKey(name: "amount") int amount,
      @JsonKey(name: "unit") String unit});
}

/// @nodoc
class _$TaskDurationCopyWithImpl<$Res, $Val extends TaskDuration>
    implements $TaskDurationCopyWith<$Res> {
  _$TaskDurationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? unit = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskDurationImplCopyWith<$Res>
    implements $TaskDurationCopyWith<$Res> {
  factory _$$TaskDurationImplCopyWith(
          _$TaskDurationImpl value, $Res Function(_$TaskDurationImpl) then) =
      __$$TaskDurationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "amount") int amount,
      @JsonKey(name: "unit") String unit});
}

/// @nodoc
class __$$TaskDurationImplCopyWithImpl<$Res>
    extends _$TaskDurationCopyWithImpl<$Res, _$TaskDurationImpl>
    implements _$$TaskDurationImplCopyWith<$Res> {
  __$$TaskDurationImplCopyWithImpl(
      _$TaskDurationImpl _value, $Res Function(_$TaskDurationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? unit = null,
  }) {
    return _then(_$TaskDurationImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskDurationImpl implements _TaskDuration {
  const _$TaskDurationImpl(
      {@JsonKey(name: "amount") required this.amount,
      @JsonKey(name: "unit") required this.unit});

  factory _$TaskDurationImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskDurationImplFromJson(json);

  @override
  @JsonKey(name: "amount")
  final int amount;
  @override
  @JsonKey(name: "unit")
  final String unit;

  @override
  String toString() {
    return 'TaskDuration(amount: $amount, unit: $unit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskDurationImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, amount, unit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskDurationImplCopyWith<_$TaskDurationImpl> get copyWith =>
      __$$TaskDurationImplCopyWithImpl<_$TaskDurationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskDurationImplToJson(
      this,
    );
  }
}

abstract class _TaskDuration implements TaskDuration {
  const factory _TaskDuration(
      {@JsonKey(name: "amount") required final int amount,
      @JsonKey(name: "unit") required final String unit}) = _$TaskDurationImpl;

  factory _TaskDuration.fromJson(Map<String, dynamic> json) =
      _$TaskDurationImpl.fromJson;

  @override
  @JsonKey(name: "amount")
  int get amount;
  @override
  @JsonKey(name: "unit")
  String get unit;
  @override
  @JsonKey(ignore: true)
  _$$TaskDurationImplCopyWith<_$TaskDurationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
