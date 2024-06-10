// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timer_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TimerState {
  int get timeSpent => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int timeSpent) initial,
    required TResult Function(int timeSpent) running,
    required TResult Function(int timeSpent) stopped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int timeSpent)? initial,
    TResult? Function(int timeSpent)? running,
    TResult? Function(int timeSpent)? stopped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int timeSpent)? initial,
    TResult Function(int timeSpent)? running,
    TResult Function(int timeSpent)? stopped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerInitial value) initial,
    required TResult Function(TimerRunning value) running,
    required TResult Function(TimerStopped value) stopped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerInitial value)? initial,
    TResult? Function(TimerRunning value)? running,
    TResult? Function(TimerStopped value)? stopped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerInitial value)? initial,
    TResult Function(TimerRunning value)? running,
    TResult Function(TimerStopped value)? stopped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimerStateCopyWith<TimerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerStateCopyWith<$Res> {
  factory $TimerStateCopyWith(
          TimerState value, $Res Function(TimerState) then) =
      _$TimerStateCopyWithImpl<$Res, TimerState>;
  @useResult
  $Res call({int timeSpent});
}

/// @nodoc
class _$TimerStateCopyWithImpl<$Res, $Val extends TimerState>
    implements $TimerStateCopyWith<$Res> {
  _$TimerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeSpent = null,
  }) {
    return _then(_value.copyWith(
      timeSpent: null == timeSpent
          ? _value.timeSpent
          : timeSpent // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimerInitialImplCopyWith<$Res>
    implements $TimerStateCopyWith<$Res> {
  factory _$$TimerInitialImplCopyWith(
          _$TimerInitialImpl value, $Res Function(_$TimerInitialImpl) then) =
      __$$TimerInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int timeSpent});
}

/// @nodoc
class __$$TimerInitialImplCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res, _$TimerInitialImpl>
    implements _$$TimerInitialImplCopyWith<$Res> {
  __$$TimerInitialImplCopyWithImpl(
      _$TimerInitialImpl _value, $Res Function(_$TimerInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeSpent = null,
  }) {
    return _then(_$TimerInitialImpl(
      null == timeSpent
          ? _value.timeSpent
          : timeSpent // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TimerInitialImpl implements TimerInitial {
  const _$TimerInitialImpl(this.timeSpent);

  @override
  final int timeSpent;

  @override
  String toString() {
    return 'TimerState.initial(timeSpent: $timeSpent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimerInitialImpl &&
            (identical(other.timeSpent, timeSpent) ||
                other.timeSpent == timeSpent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timeSpent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimerInitialImplCopyWith<_$TimerInitialImpl> get copyWith =>
      __$$TimerInitialImplCopyWithImpl<_$TimerInitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int timeSpent) initial,
    required TResult Function(int timeSpent) running,
    required TResult Function(int timeSpent) stopped,
  }) {
    return initial(timeSpent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int timeSpent)? initial,
    TResult? Function(int timeSpent)? running,
    TResult? Function(int timeSpent)? stopped,
  }) {
    return initial?.call(timeSpent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int timeSpent)? initial,
    TResult Function(int timeSpent)? running,
    TResult Function(int timeSpent)? stopped,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(timeSpent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerInitial value) initial,
    required TResult Function(TimerRunning value) running,
    required TResult Function(TimerStopped value) stopped,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerInitial value)? initial,
    TResult? Function(TimerRunning value)? running,
    TResult? Function(TimerStopped value)? stopped,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerInitial value)? initial,
    TResult Function(TimerRunning value)? running,
    TResult Function(TimerStopped value)? stopped,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TimerInitial implements TimerState {
  const factory TimerInitial(final int timeSpent) = _$TimerInitialImpl;

  @override
  int get timeSpent;
  @override
  @JsonKey(ignore: true)
  _$$TimerInitialImplCopyWith<_$TimerInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimerRunningImplCopyWith<$Res>
    implements $TimerStateCopyWith<$Res> {
  factory _$$TimerRunningImplCopyWith(
          _$TimerRunningImpl value, $Res Function(_$TimerRunningImpl) then) =
      __$$TimerRunningImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int timeSpent});
}

/// @nodoc
class __$$TimerRunningImplCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res, _$TimerRunningImpl>
    implements _$$TimerRunningImplCopyWith<$Res> {
  __$$TimerRunningImplCopyWithImpl(
      _$TimerRunningImpl _value, $Res Function(_$TimerRunningImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeSpent = null,
  }) {
    return _then(_$TimerRunningImpl(
      null == timeSpent
          ? _value.timeSpent
          : timeSpent // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TimerRunningImpl implements TimerRunning {
  const _$TimerRunningImpl(this.timeSpent);

  @override
  final int timeSpent;

  @override
  String toString() {
    return 'TimerState.running(timeSpent: $timeSpent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimerRunningImpl &&
            (identical(other.timeSpent, timeSpent) ||
                other.timeSpent == timeSpent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timeSpent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimerRunningImplCopyWith<_$TimerRunningImpl> get copyWith =>
      __$$TimerRunningImplCopyWithImpl<_$TimerRunningImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int timeSpent) initial,
    required TResult Function(int timeSpent) running,
    required TResult Function(int timeSpent) stopped,
  }) {
    return running(timeSpent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int timeSpent)? initial,
    TResult? Function(int timeSpent)? running,
    TResult? Function(int timeSpent)? stopped,
  }) {
    return running?.call(timeSpent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int timeSpent)? initial,
    TResult Function(int timeSpent)? running,
    TResult Function(int timeSpent)? stopped,
    required TResult orElse(),
  }) {
    if (running != null) {
      return running(timeSpent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerInitial value) initial,
    required TResult Function(TimerRunning value) running,
    required TResult Function(TimerStopped value) stopped,
  }) {
    return running(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerInitial value)? initial,
    TResult? Function(TimerRunning value)? running,
    TResult? Function(TimerStopped value)? stopped,
  }) {
    return running?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerInitial value)? initial,
    TResult Function(TimerRunning value)? running,
    TResult Function(TimerStopped value)? stopped,
    required TResult orElse(),
  }) {
    if (running != null) {
      return running(this);
    }
    return orElse();
  }
}

abstract class TimerRunning implements TimerState {
  const factory TimerRunning(final int timeSpent) = _$TimerRunningImpl;

  @override
  int get timeSpent;
  @override
  @JsonKey(ignore: true)
  _$$TimerRunningImplCopyWith<_$TimerRunningImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimerStoppedImplCopyWith<$Res>
    implements $TimerStateCopyWith<$Res> {
  factory _$$TimerStoppedImplCopyWith(
          _$TimerStoppedImpl value, $Res Function(_$TimerStoppedImpl) then) =
      __$$TimerStoppedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int timeSpent});
}

/// @nodoc
class __$$TimerStoppedImplCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res, _$TimerStoppedImpl>
    implements _$$TimerStoppedImplCopyWith<$Res> {
  __$$TimerStoppedImplCopyWithImpl(
      _$TimerStoppedImpl _value, $Res Function(_$TimerStoppedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeSpent = null,
  }) {
    return _then(_$TimerStoppedImpl(
      null == timeSpent
          ? _value.timeSpent
          : timeSpent // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TimerStoppedImpl implements TimerStopped {
  const _$TimerStoppedImpl(this.timeSpent);

  @override
  final int timeSpent;

  @override
  String toString() {
    return 'TimerState.stopped(timeSpent: $timeSpent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimerStoppedImpl &&
            (identical(other.timeSpent, timeSpent) ||
                other.timeSpent == timeSpent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timeSpent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimerStoppedImplCopyWith<_$TimerStoppedImpl> get copyWith =>
      __$$TimerStoppedImplCopyWithImpl<_$TimerStoppedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int timeSpent) initial,
    required TResult Function(int timeSpent) running,
    required TResult Function(int timeSpent) stopped,
  }) {
    return stopped(timeSpent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int timeSpent)? initial,
    TResult? Function(int timeSpent)? running,
    TResult? Function(int timeSpent)? stopped,
  }) {
    return stopped?.call(timeSpent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int timeSpent)? initial,
    TResult Function(int timeSpent)? running,
    TResult Function(int timeSpent)? stopped,
    required TResult orElse(),
  }) {
    if (stopped != null) {
      return stopped(timeSpent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerInitial value) initial,
    required TResult Function(TimerRunning value) running,
    required TResult Function(TimerStopped value) stopped,
  }) {
    return stopped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerInitial value)? initial,
    TResult? Function(TimerRunning value)? running,
    TResult? Function(TimerStopped value)? stopped,
  }) {
    return stopped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerInitial value)? initial,
    TResult Function(TimerRunning value)? running,
    TResult Function(TimerStopped value)? stopped,
    required TResult orElse(),
  }) {
    if (stopped != null) {
      return stopped(this);
    }
    return orElse();
  }
}

abstract class TimerStopped implements TimerState {
  const factory TimerStopped(final int timeSpent) = _$TimerStoppedImpl;

  @override
  int get timeSpent;
  @override
  @JsonKey(ignore: true)
  _$$TimerStoppedImplCopyWith<_$TimerStoppedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
