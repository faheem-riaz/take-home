// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kanban_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$KanbanState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addedTask,
    required TResult Function() updatedTask,
    required TResult Function() deletedTask,
    required TResult Function() loadedTasks,
    required TResult Function() laoding,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? addedTask,
    TResult? Function()? updatedTask,
    TResult? Function()? deletedTask,
    TResult? Function()? loadedTasks,
    TResult? Function()? laoding,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addedTask,
    TResult Function()? updatedTask,
    TResult Function()? deletedTask,
    TResult Function()? loadedTasks,
    TResult Function()? laoding,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddedTask value) addedTask,
    required TResult Function(_UpdatedTask value) updatedTask,
    required TResult Function(_DeletedTask value) deletedTask,
    required TResult Function(_LoadedTasks value) loadedTasks,
    required TResult Function(_Loading value) laoding,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AddedTask value)? addedTask,
    TResult? Function(_UpdatedTask value)? updatedTask,
    TResult? Function(_DeletedTask value)? deletedTask,
    TResult? Function(_LoadedTasks value)? loadedTasks,
    TResult? Function(_Loading value)? laoding,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddedTask value)? addedTask,
    TResult Function(_UpdatedTask value)? updatedTask,
    TResult Function(_DeletedTask value)? deletedTask,
    TResult Function(_LoadedTasks value)? loadedTasks,
    TResult Function(_Loading value)? laoding,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KanbanStateCopyWith<$Res> {
  factory $KanbanStateCopyWith(
          KanbanState value, $Res Function(KanbanState) then) =
      _$KanbanStateCopyWithImpl<$Res, KanbanState>;
}

/// @nodoc
class _$KanbanStateCopyWithImpl<$Res, $Val extends KanbanState>
    implements $KanbanStateCopyWith<$Res> {
  _$KanbanStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$KanbanStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'KanbanState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addedTask,
    required TResult Function() updatedTask,
    required TResult Function() deletedTask,
    required TResult Function() loadedTasks,
    required TResult Function() laoding,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? addedTask,
    TResult? Function()? updatedTask,
    TResult? Function()? deletedTask,
    TResult? Function()? loadedTasks,
    TResult? Function()? laoding,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addedTask,
    TResult Function()? updatedTask,
    TResult Function()? deletedTask,
    TResult Function()? loadedTasks,
    TResult Function()? laoding,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddedTask value) addedTask,
    required TResult Function(_UpdatedTask value) updatedTask,
    required TResult Function(_DeletedTask value) deletedTask,
    required TResult Function(_LoadedTasks value) loadedTasks,
    required TResult Function(_Loading value) laoding,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AddedTask value)? addedTask,
    TResult? Function(_UpdatedTask value)? updatedTask,
    TResult? Function(_DeletedTask value)? deletedTask,
    TResult? Function(_LoadedTasks value)? loadedTasks,
    TResult? Function(_Loading value)? laoding,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddedTask value)? addedTask,
    TResult Function(_UpdatedTask value)? updatedTask,
    TResult Function(_DeletedTask value)? deletedTask,
    TResult Function(_LoadedTasks value)? loadedTasks,
    TResult Function(_Loading value)? laoding,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements KanbanState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$AddedTaskImplCopyWith<$Res> {
  factory _$$AddedTaskImplCopyWith(
          _$AddedTaskImpl value, $Res Function(_$AddedTaskImpl) then) =
      __$$AddedTaskImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddedTaskImplCopyWithImpl<$Res>
    extends _$KanbanStateCopyWithImpl<$Res, _$AddedTaskImpl>
    implements _$$AddedTaskImplCopyWith<$Res> {
  __$$AddedTaskImplCopyWithImpl(
      _$AddedTaskImpl _value, $Res Function(_$AddedTaskImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddedTaskImpl implements _AddedTask {
  const _$AddedTaskImpl();

  @override
  String toString() {
    return 'KanbanState.addedTask()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddedTaskImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addedTask,
    required TResult Function() updatedTask,
    required TResult Function() deletedTask,
    required TResult Function() loadedTasks,
    required TResult Function() laoding,
    required TResult Function(String error) error,
  }) {
    return addedTask();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? addedTask,
    TResult? Function()? updatedTask,
    TResult? Function()? deletedTask,
    TResult? Function()? loadedTasks,
    TResult? Function()? laoding,
    TResult? Function(String error)? error,
  }) {
    return addedTask?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addedTask,
    TResult Function()? updatedTask,
    TResult Function()? deletedTask,
    TResult Function()? loadedTasks,
    TResult Function()? laoding,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (addedTask != null) {
      return addedTask();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddedTask value) addedTask,
    required TResult Function(_UpdatedTask value) updatedTask,
    required TResult Function(_DeletedTask value) deletedTask,
    required TResult Function(_LoadedTasks value) loadedTasks,
    required TResult Function(_Loading value) laoding,
    required TResult Function(_Error value) error,
  }) {
    return addedTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AddedTask value)? addedTask,
    TResult? Function(_UpdatedTask value)? updatedTask,
    TResult? Function(_DeletedTask value)? deletedTask,
    TResult? Function(_LoadedTasks value)? loadedTasks,
    TResult? Function(_Loading value)? laoding,
    TResult? Function(_Error value)? error,
  }) {
    return addedTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddedTask value)? addedTask,
    TResult Function(_UpdatedTask value)? updatedTask,
    TResult Function(_DeletedTask value)? deletedTask,
    TResult Function(_LoadedTasks value)? loadedTasks,
    TResult Function(_Loading value)? laoding,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (addedTask != null) {
      return addedTask(this);
    }
    return orElse();
  }
}

abstract class _AddedTask implements KanbanState {
  const factory _AddedTask() = _$AddedTaskImpl;
}

/// @nodoc
abstract class _$$UpdatedTaskImplCopyWith<$Res> {
  factory _$$UpdatedTaskImplCopyWith(
          _$UpdatedTaskImpl value, $Res Function(_$UpdatedTaskImpl) then) =
      __$$UpdatedTaskImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdatedTaskImplCopyWithImpl<$Res>
    extends _$KanbanStateCopyWithImpl<$Res, _$UpdatedTaskImpl>
    implements _$$UpdatedTaskImplCopyWith<$Res> {
  __$$UpdatedTaskImplCopyWithImpl(
      _$UpdatedTaskImpl _value, $Res Function(_$UpdatedTaskImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdatedTaskImpl implements _UpdatedTask {
  const _$UpdatedTaskImpl();

  @override
  String toString() {
    return 'KanbanState.updatedTask()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdatedTaskImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addedTask,
    required TResult Function() updatedTask,
    required TResult Function() deletedTask,
    required TResult Function() loadedTasks,
    required TResult Function() laoding,
    required TResult Function(String error) error,
  }) {
    return updatedTask();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? addedTask,
    TResult? Function()? updatedTask,
    TResult? Function()? deletedTask,
    TResult? Function()? loadedTasks,
    TResult? Function()? laoding,
    TResult? Function(String error)? error,
  }) {
    return updatedTask?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addedTask,
    TResult Function()? updatedTask,
    TResult Function()? deletedTask,
    TResult Function()? loadedTasks,
    TResult Function()? laoding,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (updatedTask != null) {
      return updatedTask();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddedTask value) addedTask,
    required TResult Function(_UpdatedTask value) updatedTask,
    required TResult Function(_DeletedTask value) deletedTask,
    required TResult Function(_LoadedTasks value) loadedTasks,
    required TResult Function(_Loading value) laoding,
    required TResult Function(_Error value) error,
  }) {
    return updatedTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AddedTask value)? addedTask,
    TResult? Function(_UpdatedTask value)? updatedTask,
    TResult? Function(_DeletedTask value)? deletedTask,
    TResult? Function(_LoadedTasks value)? loadedTasks,
    TResult? Function(_Loading value)? laoding,
    TResult? Function(_Error value)? error,
  }) {
    return updatedTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddedTask value)? addedTask,
    TResult Function(_UpdatedTask value)? updatedTask,
    TResult Function(_DeletedTask value)? deletedTask,
    TResult Function(_LoadedTasks value)? loadedTasks,
    TResult Function(_Loading value)? laoding,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (updatedTask != null) {
      return updatedTask(this);
    }
    return orElse();
  }
}

abstract class _UpdatedTask implements KanbanState {
  const factory _UpdatedTask() = _$UpdatedTaskImpl;
}

/// @nodoc
abstract class _$$DeletedTaskImplCopyWith<$Res> {
  factory _$$DeletedTaskImplCopyWith(
          _$DeletedTaskImpl value, $Res Function(_$DeletedTaskImpl) then) =
      __$$DeletedTaskImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeletedTaskImplCopyWithImpl<$Res>
    extends _$KanbanStateCopyWithImpl<$Res, _$DeletedTaskImpl>
    implements _$$DeletedTaskImplCopyWith<$Res> {
  __$$DeletedTaskImplCopyWithImpl(
      _$DeletedTaskImpl _value, $Res Function(_$DeletedTaskImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeletedTaskImpl implements _DeletedTask {
  const _$DeletedTaskImpl();

  @override
  String toString() {
    return 'KanbanState.deletedTask()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeletedTaskImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addedTask,
    required TResult Function() updatedTask,
    required TResult Function() deletedTask,
    required TResult Function() loadedTasks,
    required TResult Function() laoding,
    required TResult Function(String error) error,
  }) {
    return deletedTask();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? addedTask,
    TResult? Function()? updatedTask,
    TResult? Function()? deletedTask,
    TResult? Function()? loadedTasks,
    TResult? Function()? laoding,
    TResult? Function(String error)? error,
  }) {
    return deletedTask?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addedTask,
    TResult Function()? updatedTask,
    TResult Function()? deletedTask,
    TResult Function()? loadedTasks,
    TResult Function()? laoding,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (deletedTask != null) {
      return deletedTask();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddedTask value) addedTask,
    required TResult Function(_UpdatedTask value) updatedTask,
    required TResult Function(_DeletedTask value) deletedTask,
    required TResult Function(_LoadedTasks value) loadedTasks,
    required TResult Function(_Loading value) laoding,
    required TResult Function(_Error value) error,
  }) {
    return deletedTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AddedTask value)? addedTask,
    TResult? Function(_UpdatedTask value)? updatedTask,
    TResult? Function(_DeletedTask value)? deletedTask,
    TResult? Function(_LoadedTasks value)? loadedTasks,
    TResult? Function(_Loading value)? laoding,
    TResult? Function(_Error value)? error,
  }) {
    return deletedTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddedTask value)? addedTask,
    TResult Function(_UpdatedTask value)? updatedTask,
    TResult Function(_DeletedTask value)? deletedTask,
    TResult Function(_LoadedTasks value)? loadedTasks,
    TResult Function(_Loading value)? laoding,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (deletedTask != null) {
      return deletedTask(this);
    }
    return orElse();
  }
}

abstract class _DeletedTask implements KanbanState {
  const factory _DeletedTask() = _$DeletedTaskImpl;
}

/// @nodoc
abstract class _$$LoadedTasksImplCopyWith<$Res> {
  factory _$$LoadedTasksImplCopyWith(
          _$LoadedTasksImpl value, $Res Function(_$LoadedTasksImpl) then) =
      __$$LoadedTasksImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadedTasksImplCopyWithImpl<$Res>
    extends _$KanbanStateCopyWithImpl<$Res, _$LoadedTasksImpl>
    implements _$$LoadedTasksImplCopyWith<$Res> {
  __$$LoadedTasksImplCopyWithImpl(
      _$LoadedTasksImpl _value, $Res Function(_$LoadedTasksImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadedTasksImpl implements _LoadedTasks {
  const _$LoadedTasksImpl();

  @override
  String toString() {
    return 'KanbanState.loadedTasks()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadedTasksImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addedTask,
    required TResult Function() updatedTask,
    required TResult Function() deletedTask,
    required TResult Function() loadedTasks,
    required TResult Function() laoding,
    required TResult Function(String error) error,
  }) {
    return loadedTasks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? addedTask,
    TResult? Function()? updatedTask,
    TResult? Function()? deletedTask,
    TResult? Function()? loadedTasks,
    TResult? Function()? laoding,
    TResult? Function(String error)? error,
  }) {
    return loadedTasks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addedTask,
    TResult Function()? updatedTask,
    TResult Function()? deletedTask,
    TResult Function()? loadedTasks,
    TResult Function()? laoding,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loadedTasks != null) {
      return loadedTasks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddedTask value) addedTask,
    required TResult Function(_UpdatedTask value) updatedTask,
    required TResult Function(_DeletedTask value) deletedTask,
    required TResult Function(_LoadedTasks value) loadedTasks,
    required TResult Function(_Loading value) laoding,
    required TResult Function(_Error value) error,
  }) {
    return loadedTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AddedTask value)? addedTask,
    TResult? Function(_UpdatedTask value)? updatedTask,
    TResult? Function(_DeletedTask value)? deletedTask,
    TResult? Function(_LoadedTasks value)? loadedTasks,
    TResult? Function(_Loading value)? laoding,
    TResult? Function(_Error value)? error,
  }) {
    return loadedTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddedTask value)? addedTask,
    TResult Function(_UpdatedTask value)? updatedTask,
    TResult Function(_DeletedTask value)? deletedTask,
    TResult Function(_LoadedTasks value)? loadedTasks,
    TResult Function(_Loading value)? laoding,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadedTasks != null) {
      return loadedTasks(this);
    }
    return orElse();
  }
}

abstract class _LoadedTasks implements KanbanState {
  const factory _LoadedTasks() = _$LoadedTasksImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$KanbanStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'KanbanState.laoding()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addedTask,
    required TResult Function() updatedTask,
    required TResult Function() deletedTask,
    required TResult Function() loadedTasks,
    required TResult Function() laoding,
    required TResult Function(String error) error,
  }) {
    return laoding();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? addedTask,
    TResult? Function()? updatedTask,
    TResult? Function()? deletedTask,
    TResult? Function()? loadedTasks,
    TResult? Function()? laoding,
    TResult? Function(String error)? error,
  }) {
    return laoding?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addedTask,
    TResult Function()? updatedTask,
    TResult Function()? deletedTask,
    TResult Function()? loadedTasks,
    TResult Function()? laoding,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (laoding != null) {
      return laoding();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddedTask value) addedTask,
    required TResult Function(_UpdatedTask value) updatedTask,
    required TResult Function(_DeletedTask value) deletedTask,
    required TResult Function(_LoadedTasks value) loadedTasks,
    required TResult Function(_Loading value) laoding,
    required TResult Function(_Error value) error,
  }) {
    return laoding(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AddedTask value)? addedTask,
    TResult? Function(_UpdatedTask value)? updatedTask,
    TResult? Function(_DeletedTask value)? deletedTask,
    TResult? Function(_LoadedTasks value)? loadedTasks,
    TResult? Function(_Loading value)? laoding,
    TResult? Function(_Error value)? error,
  }) {
    return laoding?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddedTask value)? addedTask,
    TResult Function(_UpdatedTask value)? updatedTask,
    TResult Function(_DeletedTask value)? deletedTask,
    TResult Function(_LoadedTasks value)? loadedTasks,
    TResult Function(_Loading value)? laoding,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (laoding != null) {
      return laoding(this);
    }
    return orElse();
  }
}

abstract class _Loading implements KanbanState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$KanbanStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'KanbanState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addedTask,
    required TResult Function() updatedTask,
    required TResult Function() deletedTask,
    required TResult Function() loadedTasks,
    required TResult Function() laoding,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? addedTask,
    TResult? Function()? updatedTask,
    TResult? Function()? deletedTask,
    TResult? Function()? loadedTasks,
    TResult? Function()? laoding,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addedTask,
    TResult Function()? updatedTask,
    TResult Function()? deletedTask,
    TResult Function()? loadedTasks,
    TResult Function()? laoding,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddedTask value) addedTask,
    required TResult Function(_UpdatedTask value) updatedTask,
    required TResult Function(_DeletedTask value) deletedTask,
    required TResult Function(_LoadedTasks value) loadedTasks,
    required TResult Function(_Loading value) laoding,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AddedTask value)? addedTask,
    TResult? Function(_UpdatedTask value)? updatedTask,
    TResult? Function(_DeletedTask value)? deletedTask,
    TResult? Function(_LoadedTasks value)? loadedTasks,
    TResult? Function(_Loading value)? laoding,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddedTask value)? addedTask,
    TResult Function(_UpdatedTask value)? updatedTask,
    TResult Function(_DeletedTask value)? deletedTask,
    TResult Function(_LoadedTasks value)? loadedTasks,
    TResult Function(_Loading value)? laoding,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements KanbanState {
  const factory _Error(final String error) = _$ErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
