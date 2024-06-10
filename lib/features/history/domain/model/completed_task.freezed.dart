// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'completed_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CompletedTasks _$CompletedTasksFromJson(Map<String, dynamic> json) {
  return _CompletedTasks.fromJson(json);
}

/// @nodoc
mixin _$CompletedTasks {
  List<CompletedTaskItem> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompletedTasksCopyWith<CompletedTasks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompletedTasksCopyWith<$Res> {
  factory $CompletedTasksCopyWith(
          CompletedTasks value, $Res Function(CompletedTasks) then) =
      _$CompletedTasksCopyWithImpl<$Res, CompletedTasks>;
  @useResult
  $Res call({List<CompletedTaskItem> items});
}

/// @nodoc
class _$CompletedTasksCopyWithImpl<$Res, $Val extends CompletedTasks>
    implements $CompletedTasksCopyWith<$Res> {
  _$CompletedTasksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CompletedTaskItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompletedTasksImplCopyWith<$Res>
    implements $CompletedTasksCopyWith<$Res> {
  factory _$$CompletedTasksImplCopyWith(_$CompletedTasksImpl value,
          $Res Function(_$CompletedTasksImpl) then) =
      __$$CompletedTasksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CompletedTaskItem> items});
}

/// @nodoc
class __$$CompletedTasksImplCopyWithImpl<$Res>
    extends _$CompletedTasksCopyWithImpl<$Res, _$CompletedTasksImpl>
    implements _$$CompletedTasksImplCopyWith<$Res> {
  __$$CompletedTasksImplCopyWithImpl(
      _$CompletedTasksImpl _value, $Res Function(_$CompletedTasksImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$CompletedTasksImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CompletedTaskItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompletedTasksImpl implements _CompletedTasks {
  const _$CompletedTasksImpl({required final List<CompletedTaskItem> items})
      : _items = items;

  factory _$CompletedTasksImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompletedTasksImplFromJson(json);

  final List<CompletedTaskItem> _items;
  @override
  List<CompletedTaskItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'CompletedTasks(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompletedTasksImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompletedTasksImplCopyWith<_$CompletedTasksImpl> get copyWith =>
      __$$CompletedTasksImplCopyWithImpl<_$CompletedTasksImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompletedTasksImplToJson(
      this,
    );
  }
}

abstract class _CompletedTasks implements CompletedTasks {
  const factory _CompletedTasks(
      {required final List<CompletedTaskItem> items}) = _$CompletedTasksImpl;

  factory _CompletedTasks.fromJson(Map<String, dynamic> json) =
      _$CompletedTasksImpl.fromJson;

  @override
  List<CompletedTaskItem> get items;
  @override
  @JsonKey(ignore: true)
  _$$CompletedTasksImplCopyWith<_$CompletedTasksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CompletedTaskItem _$CompletedTaskItemFromJson(Map<String, dynamic> json) {
  return _CompletedTaskItem.fromJson(json);
}

/// @nodoc
mixin _$CompletedTaskItem {
  @JsonKey(name: "completed_at")
  String get completedAt => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "project_id")
  String get projectId => throw _privateConstructorUsedError;
  @JsonKey(name: "section_id")
  String get sectionId => throw _privateConstructorUsedError;
  @JsonKey(name: "task_id")
  String get taskId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompletedTaskItemCopyWith<CompletedTaskItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompletedTaskItemCopyWith<$Res> {
  factory $CompletedTaskItemCopyWith(
          CompletedTaskItem value, $Res Function(CompletedTaskItem) then) =
      _$CompletedTaskItemCopyWithImpl<$Res, CompletedTaskItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "completed_at") String completedAt,
      String content,
      String id,
      @JsonKey(name: "project_id") String projectId,
      @JsonKey(name: "section_id") String sectionId,
      @JsonKey(name: "task_id") String taskId});
}

/// @nodoc
class _$CompletedTaskItemCopyWithImpl<$Res, $Val extends CompletedTaskItem>
    implements $CompletedTaskItemCopyWith<$Res> {
  _$CompletedTaskItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? completedAt = null,
    Object? content = null,
    Object? id = null,
    Object? projectId = null,
    Object? sectionId = null,
    Object? taskId = null,
  }) {
    return _then(_value.copyWith(
      completedAt: null == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
      sectionId: null == sectionId
          ? _value.sectionId
          : sectionId // ignore: cast_nullable_to_non_nullable
              as String,
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompletedTaskItemImplCopyWith<$Res>
    implements $CompletedTaskItemCopyWith<$Res> {
  factory _$$CompletedTaskItemImplCopyWith(_$CompletedTaskItemImpl value,
          $Res Function(_$CompletedTaskItemImpl) then) =
      __$$CompletedTaskItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "completed_at") String completedAt,
      String content,
      String id,
      @JsonKey(name: "project_id") String projectId,
      @JsonKey(name: "section_id") String sectionId,
      @JsonKey(name: "task_id") String taskId});
}

/// @nodoc
class __$$CompletedTaskItemImplCopyWithImpl<$Res>
    extends _$CompletedTaskItemCopyWithImpl<$Res, _$CompletedTaskItemImpl>
    implements _$$CompletedTaskItemImplCopyWith<$Res> {
  __$$CompletedTaskItemImplCopyWithImpl(_$CompletedTaskItemImpl _value,
      $Res Function(_$CompletedTaskItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? completedAt = null,
    Object? content = null,
    Object? id = null,
    Object? projectId = null,
    Object? sectionId = null,
    Object? taskId = null,
  }) {
    return _then(_$CompletedTaskItemImpl(
      completedAt: null == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
      sectionId: null == sectionId
          ? _value.sectionId
          : sectionId // ignore: cast_nullable_to_non_nullable
              as String,
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompletedTaskItemImpl implements _CompletedTaskItem {
  const _$CompletedTaskItemImpl(
      {@JsonKey(name: "completed_at") required this.completedAt,
      required this.content,
      required this.id,
      @JsonKey(name: "project_id") required this.projectId,
      @JsonKey(name: "section_id") required this.sectionId,
      @JsonKey(name: "task_id") required this.taskId});

  factory _$CompletedTaskItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompletedTaskItemImplFromJson(json);

  @override
  @JsonKey(name: "completed_at")
  final String completedAt;
  @override
  final String content;
  @override
  final String id;
  @override
  @JsonKey(name: "project_id")
  final String projectId;
  @override
  @JsonKey(name: "section_id")
  final String sectionId;
  @override
  @JsonKey(name: "task_id")
  final String taskId;

  @override
  String toString() {
    return 'CompletedTaskItem(completedAt: $completedAt, content: $content, id: $id, projectId: $projectId, sectionId: $sectionId, taskId: $taskId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompletedTaskItemImpl &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.sectionId, sectionId) ||
                other.sectionId == sectionId) &&
            (identical(other.taskId, taskId) || other.taskId == taskId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, completedAt, content, id, projectId, sectionId, taskId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompletedTaskItemImplCopyWith<_$CompletedTaskItemImpl> get copyWith =>
      __$$CompletedTaskItemImplCopyWithImpl<_$CompletedTaskItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompletedTaskItemImplToJson(
      this,
    );
  }
}

abstract class _CompletedTaskItem implements CompletedTaskItem {
  const factory _CompletedTaskItem(
          {@JsonKey(name: "completed_at") required final String completedAt,
          required final String content,
          required final String id,
          @JsonKey(name: "project_id") required final String projectId,
          @JsonKey(name: "section_id") required final String sectionId,
          @JsonKey(name: "task_id") required final String taskId}) =
      _$CompletedTaskItemImpl;

  factory _CompletedTaskItem.fromJson(Map<String, dynamic> json) =
      _$CompletedTaskItemImpl.fromJson;

  @override
  @JsonKey(name: "completed_at")
  String get completedAt;
  @override
  String get content;
  @override
  String get id;
  @override
  @JsonKey(name: "project_id")
  String get projectId;
  @override
  @JsonKey(name: "section_id")
  String get sectionId;
  @override
  @JsonKey(name: "task_id")
  String get taskId;
  @override
  @JsonKey(ignore: true)
  _$$CompletedTaskItemImplCopyWith<_$CompletedTaskItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
