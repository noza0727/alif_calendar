// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CalendarEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInitialHandler,
    required TResult Function(DateTime date) loadEventsForMonth,
    required TResult Function(DateTime date) updateSelectedDate,
    required TResult Function(EventModel event) createOrUpdateEvent,
    required TResult Function(int id) deleteEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInitialHandler,
    TResult? Function(DateTime date)? loadEventsForMonth,
    TResult? Function(DateTime date)? updateSelectedDate,
    TResult? Function(EventModel event)? createOrUpdateEvent,
    TResult? Function(int id)? deleteEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInitialHandler,
    TResult Function(DateTime date)? loadEventsForMonth,
    TResult Function(DateTime date)? updateSelectedDate,
    TResult Function(EventModel event)? createOrUpdateEvent,
    TResult Function(int id)? deleteEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInitialCalendarEvent value)
        loadInitialHandler,
    required TResult Function(_LoadEventsForMonthCalendarEvent value)
        loadEventsForMonth,
    required TResult Function(_UpdateSelectedDateCalendarEvent value)
        updateSelectedDate,
    required TResult Function(_CreateOrUpdateEventCalendarEvent value)
        createOrUpdateEvent,
    required TResult Function(_DeleteEventCalendarEvent value) deleteEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInitialCalendarEvent value)? loadInitialHandler,
    TResult? Function(_LoadEventsForMonthCalendarEvent value)?
        loadEventsForMonth,
    TResult? Function(_UpdateSelectedDateCalendarEvent value)?
        updateSelectedDate,
    TResult? Function(_CreateOrUpdateEventCalendarEvent value)?
        createOrUpdateEvent,
    TResult? Function(_DeleteEventCalendarEvent value)? deleteEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInitialCalendarEvent value)? loadInitialHandler,
    TResult Function(_LoadEventsForMonthCalendarEvent value)?
        loadEventsForMonth,
    TResult Function(_UpdateSelectedDateCalendarEvent value)?
        updateSelectedDate,
    TResult Function(_CreateOrUpdateEventCalendarEvent value)?
        createOrUpdateEvent,
    TResult Function(_DeleteEventCalendarEvent value)? deleteEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarEventCopyWith<$Res> {
  factory $CalendarEventCopyWith(
          CalendarEvent value, $Res Function(CalendarEvent) then) =
      _$CalendarEventCopyWithImpl<$Res, CalendarEvent>;
}

/// @nodoc
class _$CalendarEventCopyWithImpl<$Res, $Val extends CalendarEvent>
    implements $CalendarEventCopyWith<$Res> {
  _$CalendarEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadInitialCalendarEventCopyWith<$Res> {
  factory _$$_LoadInitialCalendarEventCopyWith(
          _$_LoadInitialCalendarEvent value,
          $Res Function(_$_LoadInitialCalendarEvent) then) =
      __$$_LoadInitialCalendarEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadInitialCalendarEventCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res, _$_LoadInitialCalendarEvent>
    implements _$$_LoadInitialCalendarEventCopyWith<$Res> {
  __$$_LoadInitialCalendarEventCopyWithImpl(_$_LoadInitialCalendarEvent _value,
      $Res Function(_$_LoadInitialCalendarEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadInitialCalendarEvent implements _LoadInitialCalendarEvent {
  const _$_LoadInitialCalendarEvent();

  @override
  String toString() {
    return 'CalendarEvent.loadInitialHandler()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadInitialCalendarEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInitialHandler,
    required TResult Function(DateTime date) loadEventsForMonth,
    required TResult Function(DateTime date) updateSelectedDate,
    required TResult Function(EventModel event) createOrUpdateEvent,
    required TResult Function(int id) deleteEvent,
  }) {
    return loadInitialHandler();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInitialHandler,
    TResult? Function(DateTime date)? loadEventsForMonth,
    TResult? Function(DateTime date)? updateSelectedDate,
    TResult? Function(EventModel event)? createOrUpdateEvent,
    TResult? Function(int id)? deleteEvent,
  }) {
    return loadInitialHandler?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInitialHandler,
    TResult Function(DateTime date)? loadEventsForMonth,
    TResult Function(DateTime date)? updateSelectedDate,
    TResult Function(EventModel event)? createOrUpdateEvent,
    TResult Function(int id)? deleteEvent,
    required TResult orElse(),
  }) {
    if (loadInitialHandler != null) {
      return loadInitialHandler();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInitialCalendarEvent value)
        loadInitialHandler,
    required TResult Function(_LoadEventsForMonthCalendarEvent value)
        loadEventsForMonth,
    required TResult Function(_UpdateSelectedDateCalendarEvent value)
        updateSelectedDate,
    required TResult Function(_CreateOrUpdateEventCalendarEvent value)
        createOrUpdateEvent,
    required TResult Function(_DeleteEventCalendarEvent value) deleteEvent,
  }) {
    return loadInitialHandler(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInitialCalendarEvent value)? loadInitialHandler,
    TResult? Function(_LoadEventsForMonthCalendarEvent value)?
        loadEventsForMonth,
    TResult? Function(_UpdateSelectedDateCalendarEvent value)?
        updateSelectedDate,
    TResult? Function(_CreateOrUpdateEventCalendarEvent value)?
        createOrUpdateEvent,
    TResult? Function(_DeleteEventCalendarEvent value)? deleteEvent,
  }) {
    return loadInitialHandler?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInitialCalendarEvent value)? loadInitialHandler,
    TResult Function(_LoadEventsForMonthCalendarEvent value)?
        loadEventsForMonth,
    TResult Function(_UpdateSelectedDateCalendarEvent value)?
        updateSelectedDate,
    TResult Function(_CreateOrUpdateEventCalendarEvent value)?
        createOrUpdateEvent,
    TResult Function(_DeleteEventCalendarEvent value)? deleteEvent,
    required TResult orElse(),
  }) {
    if (loadInitialHandler != null) {
      return loadInitialHandler(this);
    }
    return orElse();
  }
}

abstract class _LoadInitialCalendarEvent implements CalendarEvent {
  const factory _LoadInitialCalendarEvent() = _$_LoadInitialCalendarEvent;
}

/// @nodoc
abstract class _$$_LoadEventsForMonthCalendarEventCopyWith<$Res> {
  factory _$$_LoadEventsForMonthCalendarEventCopyWith(
          _$_LoadEventsForMonthCalendarEvent value,
          $Res Function(_$_LoadEventsForMonthCalendarEvent) then) =
      __$$_LoadEventsForMonthCalendarEventCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$_LoadEventsForMonthCalendarEventCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res,
        _$_LoadEventsForMonthCalendarEvent>
    implements _$$_LoadEventsForMonthCalendarEventCopyWith<$Res> {
  __$$_LoadEventsForMonthCalendarEventCopyWithImpl(
      _$_LoadEventsForMonthCalendarEvent _value,
      $Res Function(_$_LoadEventsForMonthCalendarEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$_LoadEventsForMonthCalendarEvent(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_LoadEventsForMonthCalendarEvent
    implements _LoadEventsForMonthCalendarEvent {
  const _$_LoadEventsForMonthCalendarEvent({required this.date});

  @override
  final DateTime date;

  @override
  String toString() {
    return 'CalendarEvent.loadEventsForMonth(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadEventsForMonthCalendarEvent &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadEventsForMonthCalendarEventCopyWith<
          _$_LoadEventsForMonthCalendarEvent>
      get copyWith => __$$_LoadEventsForMonthCalendarEventCopyWithImpl<
          _$_LoadEventsForMonthCalendarEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInitialHandler,
    required TResult Function(DateTime date) loadEventsForMonth,
    required TResult Function(DateTime date) updateSelectedDate,
    required TResult Function(EventModel event) createOrUpdateEvent,
    required TResult Function(int id) deleteEvent,
  }) {
    return loadEventsForMonth(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInitialHandler,
    TResult? Function(DateTime date)? loadEventsForMonth,
    TResult? Function(DateTime date)? updateSelectedDate,
    TResult? Function(EventModel event)? createOrUpdateEvent,
    TResult? Function(int id)? deleteEvent,
  }) {
    return loadEventsForMonth?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInitialHandler,
    TResult Function(DateTime date)? loadEventsForMonth,
    TResult Function(DateTime date)? updateSelectedDate,
    TResult Function(EventModel event)? createOrUpdateEvent,
    TResult Function(int id)? deleteEvent,
    required TResult orElse(),
  }) {
    if (loadEventsForMonth != null) {
      return loadEventsForMonth(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInitialCalendarEvent value)
        loadInitialHandler,
    required TResult Function(_LoadEventsForMonthCalendarEvent value)
        loadEventsForMonth,
    required TResult Function(_UpdateSelectedDateCalendarEvent value)
        updateSelectedDate,
    required TResult Function(_CreateOrUpdateEventCalendarEvent value)
        createOrUpdateEvent,
    required TResult Function(_DeleteEventCalendarEvent value) deleteEvent,
  }) {
    return loadEventsForMonth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInitialCalendarEvent value)? loadInitialHandler,
    TResult? Function(_LoadEventsForMonthCalendarEvent value)?
        loadEventsForMonth,
    TResult? Function(_UpdateSelectedDateCalendarEvent value)?
        updateSelectedDate,
    TResult? Function(_CreateOrUpdateEventCalendarEvent value)?
        createOrUpdateEvent,
    TResult? Function(_DeleteEventCalendarEvent value)? deleteEvent,
  }) {
    return loadEventsForMonth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInitialCalendarEvent value)? loadInitialHandler,
    TResult Function(_LoadEventsForMonthCalendarEvent value)?
        loadEventsForMonth,
    TResult Function(_UpdateSelectedDateCalendarEvent value)?
        updateSelectedDate,
    TResult Function(_CreateOrUpdateEventCalendarEvent value)?
        createOrUpdateEvent,
    TResult Function(_DeleteEventCalendarEvent value)? deleteEvent,
    required TResult orElse(),
  }) {
    if (loadEventsForMonth != null) {
      return loadEventsForMonth(this);
    }
    return orElse();
  }
}

abstract class _LoadEventsForMonthCalendarEvent implements CalendarEvent {
  const factory _LoadEventsForMonthCalendarEvent(
      {required final DateTime date}) = _$_LoadEventsForMonthCalendarEvent;

  DateTime get date;
  @JsonKey(ignore: true)
  _$$_LoadEventsForMonthCalendarEventCopyWith<
          _$_LoadEventsForMonthCalendarEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateSelectedDateCalendarEventCopyWith<$Res> {
  factory _$$_UpdateSelectedDateCalendarEventCopyWith(
          _$_UpdateSelectedDateCalendarEvent value,
          $Res Function(_$_UpdateSelectedDateCalendarEvent) then) =
      __$$_UpdateSelectedDateCalendarEventCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$_UpdateSelectedDateCalendarEventCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res,
        _$_UpdateSelectedDateCalendarEvent>
    implements _$$_UpdateSelectedDateCalendarEventCopyWith<$Res> {
  __$$_UpdateSelectedDateCalendarEventCopyWithImpl(
      _$_UpdateSelectedDateCalendarEvent _value,
      $Res Function(_$_UpdateSelectedDateCalendarEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$_UpdateSelectedDateCalendarEvent(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_UpdateSelectedDateCalendarEvent
    implements _UpdateSelectedDateCalendarEvent {
  const _$_UpdateSelectedDateCalendarEvent({required this.date});

  @override
  final DateTime date;

  @override
  String toString() {
    return 'CalendarEvent.updateSelectedDate(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateSelectedDateCalendarEvent &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateSelectedDateCalendarEventCopyWith<
          _$_UpdateSelectedDateCalendarEvent>
      get copyWith => __$$_UpdateSelectedDateCalendarEventCopyWithImpl<
          _$_UpdateSelectedDateCalendarEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInitialHandler,
    required TResult Function(DateTime date) loadEventsForMonth,
    required TResult Function(DateTime date) updateSelectedDate,
    required TResult Function(EventModel event) createOrUpdateEvent,
    required TResult Function(int id) deleteEvent,
  }) {
    return updateSelectedDate(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInitialHandler,
    TResult? Function(DateTime date)? loadEventsForMonth,
    TResult? Function(DateTime date)? updateSelectedDate,
    TResult? Function(EventModel event)? createOrUpdateEvent,
    TResult? Function(int id)? deleteEvent,
  }) {
    return updateSelectedDate?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInitialHandler,
    TResult Function(DateTime date)? loadEventsForMonth,
    TResult Function(DateTime date)? updateSelectedDate,
    TResult Function(EventModel event)? createOrUpdateEvent,
    TResult Function(int id)? deleteEvent,
    required TResult orElse(),
  }) {
    if (updateSelectedDate != null) {
      return updateSelectedDate(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInitialCalendarEvent value)
        loadInitialHandler,
    required TResult Function(_LoadEventsForMonthCalendarEvent value)
        loadEventsForMonth,
    required TResult Function(_UpdateSelectedDateCalendarEvent value)
        updateSelectedDate,
    required TResult Function(_CreateOrUpdateEventCalendarEvent value)
        createOrUpdateEvent,
    required TResult Function(_DeleteEventCalendarEvent value) deleteEvent,
  }) {
    return updateSelectedDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInitialCalendarEvent value)? loadInitialHandler,
    TResult? Function(_LoadEventsForMonthCalendarEvent value)?
        loadEventsForMonth,
    TResult? Function(_UpdateSelectedDateCalendarEvent value)?
        updateSelectedDate,
    TResult? Function(_CreateOrUpdateEventCalendarEvent value)?
        createOrUpdateEvent,
    TResult? Function(_DeleteEventCalendarEvent value)? deleteEvent,
  }) {
    return updateSelectedDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInitialCalendarEvent value)? loadInitialHandler,
    TResult Function(_LoadEventsForMonthCalendarEvent value)?
        loadEventsForMonth,
    TResult Function(_UpdateSelectedDateCalendarEvent value)?
        updateSelectedDate,
    TResult Function(_CreateOrUpdateEventCalendarEvent value)?
        createOrUpdateEvent,
    TResult Function(_DeleteEventCalendarEvent value)? deleteEvent,
    required TResult orElse(),
  }) {
    if (updateSelectedDate != null) {
      return updateSelectedDate(this);
    }
    return orElse();
  }
}

abstract class _UpdateSelectedDateCalendarEvent implements CalendarEvent {
  const factory _UpdateSelectedDateCalendarEvent(
      {required final DateTime date}) = _$_UpdateSelectedDateCalendarEvent;

  DateTime get date;
  @JsonKey(ignore: true)
  _$$_UpdateSelectedDateCalendarEventCopyWith<
          _$_UpdateSelectedDateCalendarEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CreateOrUpdateEventCalendarEventCopyWith<$Res> {
  factory _$$_CreateOrUpdateEventCalendarEventCopyWith(
          _$_CreateOrUpdateEventCalendarEvent value,
          $Res Function(_$_CreateOrUpdateEventCalendarEvent) then) =
      __$$_CreateOrUpdateEventCalendarEventCopyWithImpl<$Res>;
  @useResult
  $Res call({EventModel event});
}

/// @nodoc
class __$$_CreateOrUpdateEventCalendarEventCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res,
        _$_CreateOrUpdateEventCalendarEvent>
    implements _$$_CreateOrUpdateEventCalendarEventCopyWith<$Res> {
  __$$_CreateOrUpdateEventCalendarEventCopyWithImpl(
      _$_CreateOrUpdateEventCalendarEvent _value,
      $Res Function(_$_CreateOrUpdateEventCalendarEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
  }) {
    return _then(_$_CreateOrUpdateEventCalendarEvent(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventModel,
    ));
  }
}

/// @nodoc

class _$_CreateOrUpdateEventCalendarEvent
    implements _CreateOrUpdateEventCalendarEvent {
  const _$_CreateOrUpdateEventCalendarEvent({required this.event});

  @override
  final EventModel event;

  @override
  String toString() {
    return 'CalendarEvent.createOrUpdateEvent(event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateOrUpdateEventCalendarEvent &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateOrUpdateEventCalendarEventCopyWith<
          _$_CreateOrUpdateEventCalendarEvent>
      get copyWith => __$$_CreateOrUpdateEventCalendarEventCopyWithImpl<
          _$_CreateOrUpdateEventCalendarEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInitialHandler,
    required TResult Function(DateTime date) loadEventsForMonth,
    required TResult Function(DateTime date) updateSelectedDate,
    required TResult Function(EventModel event) createOrUpdateEvent,
    required TResult Function(int id) deleteEvent,
  }) {
    return createOrUpdateEvent(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInitialHandler,
    TResult? Function(DateTime date)? loadEventsForMonth,
    TResult? Function(DateTime date)? updateSelectedDate,
    TResult? Function(EventModel event)? createOrUpdateEvent,
    TResult? Function(int id)? deleteEvent,
  }) {
    return createOrUpdateEvent?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInitialHandler,
    TResult Function(DateTime date)? loadEventsForMonth,
    TResult Function(DateTime date)? updateSelectedDate,
    TResult Function(EventModel event)? createOrUpdateEvent,
    TResult Function(int id)? deleteEvent,
    required TResult orElse(),
  }) {
    if (createOrUpdateEvent != null) {
      return createOrUpdateEvent(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInitialCalendarEvent value)
        loadInitialHandler,
    required TResult Function(_LoadEventsForMonthCalendarEvent value)
        loadEventsForMonth,
    required TResult Function(_UpdateSelectedDateCalendarEvent value)
        updateSelectedDate,
    required TResult Function(_CreateOrUpdateEventCalendarEvent value)
        createOrUpdateEvent,
    required TResult Function(_DeleteEventCalendarEvent value) deleteEvent,
  }) {
    return createOrUpdateEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInitialCalendarEvent value)? loadInitialHandler,
    TResult? Function(_LoadEventsForMonthCalendarEvent value)?
        loadEventsForMonth,
    TResult? Function(_UpdateSelectedDateCalendarEvent value)?
        updateSelectedDate,
    TResult? Function(_CreateOrUpdateEventCalendarEvent value)?
        createOrUpdateEvent,
    TResult? Function(_DeleteEventCalendarEvent value)? deleteEvent,
  }) {
    return createOrUpdateEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInitialCalendarEvent value)? loadInitialHandler,
    TResult Function(_LoadEventsForMonthCalendarEvent value)?
        loadEventsForMonth,
    TResult Function(_UpdateSelectedDateCalendarEvent value)?
        updateSelectedDate,
    TResult Function(_CreateOrUpdateEventCalendarEvent value)?
        createOrUpdateEvent,
    TResult Function(_DeleteEventCalendarEvent value)? deleteEvent,
    required TResult orElse(),
  }) {
    if (createOrUpdateEvent != null) {
      return createOrUpdateEvent(this);
    }
    return orElse();
  }
}

abstract class _CreateOrUpdateEventCalendarEvent implements CalendarEvent {
  const factory _CreateOrUpdateEventCalendarEvent(
      {required final EventModel event}) = _$_CreateOrUpdateEventCalendarEvent;

  EventModel get event;
  @JsonKey(ignore: true)
  _$$_CreateOrUpdateEventCalendarEventCopyWith<
          _$_CreateOrUpdateEventCalendarEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteEventCalendarEventCopyWith<$Res> {
  factory _$$_DeleteEventCalendarEventCopyWith(
          _$_DeleteEventCalendarEvent value,
          $Res Function(_$_DeleteEventCalendarEvent) then) =
      __$$_DeleteEventCalendarEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_DeleteEventCalendarEventCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res, _$_DeleteEventCalendarEvent>
    implements _$$_DeleteEventCalendarEventCopyWith<$Res> {
  __$$_DeleteEventCalendarEventCopyWithImpl(_$_DeleteEventCalendarEvent _value,
      $Res Function(_$_DeleteEventCalendarEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_DeleteEventCalendarEvent(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DeleteEventCalendarEvent implements _DeleteEventCalendarEvent {
  const _$_DeleteEventCalendarEvent({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'CalendarEvent.deleteEvent(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteEventCalendarEvent &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteEventCalendarEventCopyWith<_$_DeleteEventCalendarEvent>
      get copyWith => __$$_DeleteEventCalendarEventCopyWithImpl<
          _$_DeleteEventCalendarEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInitialHandler,
    required TResult Function(DateTime date) loadEventsForMonth,
    required TResult Function(DateTime date) updateSelectedDate,
    required TResult Function(EventModel event) createOrUpdateEvent,
    required TResult Function(int id) deleteEvent,
  }) {
    return deleteEvent(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInitialHandler,
    TResult? Function(DateTime date)? loadEventsForMonth,
    TResult? Function(DateTime date)? updateSelectedDate,
    TResult? Function(EventModel event)? createOrUpdateEvent,
    TResult? Function(int id)? deleteEvent,
  }) {
    return deleteEvent?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInitialHandler,
    TResult Function(DateTime date)? loadEventsForMonth,
    TResult Function(DateTime date)? updateSelectedDate,
    TResult Function(EventModel event)? createOrUpdateEvent,
    TResult Function(int id)? deleteEvent,
    required TResult orElse(),
  }) {
    if (deleteEvent != null) {
      return deleteEvent(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInitialCalendarEvent value)
        loadInitialHandler,
    required TResult Function(_LoadEventsForMonthCalendarEvent value)
        loadEventsForMonth,
    required TResult Function(_UpdateSelectedDateCalendarEvent value)
        updateSelectedDate,
    required TResult Function(_CreateOrUpdateEventCalendarEvent value)
        createOrUpdateEvent,
    required TResult Function(_DeleteEventCalendarEvent value) deleteEvent,
  }) {
    return deleteEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInitialCalendarEvent value)? loadInitialHandler,
    TResult? Function(_LoadEventsForMonthCalendarEvent value)?
        loadEventsForMonth,
    TResult? Function(_UpdateSelectedDateCalendarEvent value)?
        updateSelectedDate,
    TResult? Function(_CreateOrUpdateEventCalendarEvent value)?
        createOrUpdateEvent,
    TResult? Function(_DeleteEventCalendarEvent value)? deleteEvent,
  }) {
    return deleteEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInitialCalendarEvent value)? loadInitialHandler,
    TResult Function(_LoadEventsForMonthCalendarEvent value)?
        loadEventsForMonth,
    TResult Function(_UpdateSelectedDateCalendarEvent value)?
        updateSelectedDate,
    TResult Function(_CreateOrUpdateEventCalendarEvent value)?
        createOrUpdateEvent,
    TResult Function(_DeleteEventCalendarEvent value)? deleteEvent,
    required TResult orElse(),
  }) {
    if (deleteEvent != null) {
      return deleteEvent(this);
    }
    return orElse();
  }
}

abstract class _DeleteEventCalendarEvent implements CalendarEvent {
  const factory _DeleteEventCalendarEvent({required final int id}) =
      _$_DeleteEventCalendarEvent;

  int get id;
  @JsonKey(ignore: true)
  _$$_DeleteEventCalendarEventCopyWith<_$_DeleteEventCalendarEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CalendarState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DateTime selectedDate) loading,
    required TResult Function(DateTime selectedDate, List<EventModel> allEvents,
            List<EventModel> eventsOfDay)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DateTime selectedDate)? loading,
    TResult? Function(DateTime selectedDate, List<EventModel> allEvents,
            List<EventModel> eventsOfDay)?
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DateTime selectedDate)? loading,
    TResult Function(DateTime selectedDate, List<EventModel> allEvents,
            List<EventModel> eventsOfDay)?
        loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCalendarState value) initial,
    required TResult Function(_LoadingCalendarState value) loading,
    required TResult Function(_LoadSuccessCalendarState value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCalendarState value)? initial,
    TResult? Function(_LoadingCalendarState value)? loading,
    TResult? Function(_LoadSuccessCalendarState value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCalendarState value)? initial,
    TResult Function(_LoadingCalendarState value)? loading,
    TResult Function(_LoadSuccessCalendarState value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarStateCopyWith<$Res> {
  factory $CalendarStateCopyWith(
          CalendarState value, $Res Function(CalendarState) then) =
      _$CalendarStateCopyWithImpl<$Res, CalendarState>;
}

/// @nodoc
class _$CalendarStateCopyWithImpl<$Res, $Val extends CalendarState>
    implements $CalendarStateCopyWith<$Res> {
  _$CalendarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCalendarStateCopyWith<$Res> {
  factory _$$_InitialCalendarStateCopyWith(_$_InitialCalendarState value,
          $Res Function(_$_InitialCalendarState) then) =
      __$$_InitialCalendarStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCalendarStateCopyWithImpl<$Res>
    extends _$CalendarStateCopyWithImpl<$Res, _$_InitialCalendarState>
    implements _$$_InitialCalendarStateCopyWith<$Res> {
  __$$_InitialCalendarStateCopyWithImpl(_$_InitialCalendarState _value,
      $Res Function(_$_InitialCalendarState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitialCalendarState implements _InitialCalendarState {
  const _$_InitialCalendarState();

  @override
  String toString() {
    return 'CalendarState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InitialCalendarState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DateTime selectedDate) loading,
    required TResult Function(DateTime selectedDate, List<EventModel> allEvents,
            List<EventModel> eventsOfDay)
        loadSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DateTime selectedDate)? loading,
    TResult? Function(DateTime selectedDate, List<EventModel> allEvents,
            List<EventModel> eventsOfDay)?
        loadSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DateTime selectedDate)? loading,
    TResult Function(DateTime selectedDate, List<EventModel> allEvents,
            List<EventModel> eventsOfDay)?
        loadSuccess,
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
    required TResult Function(_InitialCalendarState value) initial,
    required TResult Function(_LoadingCalendarState value) loading,
    required TResult Function(_LoadSuccessCalendarState value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCalendarState value)? initial,
    TResult? Function(_LoadingCalendarState value)? loading,
    TResult? Function(_LoadSuccessCalendarState value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCalendarState value)? initial,
    TResult Function(_LoadingCalendarState value)? loading,
    TResult Function(_LoadSuccessCalendarState value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialCalendarState implements CalendarState {
  const factory _InitialCalendarState() = _$_InitialCalendarState;
}

/// @nodoc
abstract class _$$_LoadingCalendarStateCopyWith<$Res> {
  factory _$$_LoadingCalendarStateCopyWith(_$_LoadingCalendarState value,
          $Res Function(_$_LoadingCalendarState) then) =
      __$$_LoadingCalendarStateCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime selectedDate});
}

/// @nodoc
class __$$_LoadingCalendarStateCopyWithImpl<$Res>
    extends _$CalendarStateCopyWithImpl<$Res, _$_LoadingCalendarState>
    implements _$$_LoadingCalendarStateCopyWith<$Res> {
  __$$_LoadingCalendarStateCopyWithImpl(_$_LoadingCalendarState _value,
      $Res Function(_$_LoadingCalendarState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDate = null,
  }) {
    return _then(_$_LoadingCalendarState(
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_LoadingCalendarState implements _LoadingCalendarState {
  const _$_LoadingCalendarState({required this.selectedDate});

  @override
  final DateTime selectedDate;

  @override
  String toString() {
    return 'CalendarState.loading(selectedDate: $selectedDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadingCalendarState &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingCalendarStateCopyWith<_$_LoadingCalendarState> get copyWith =>
      __$$_LoadingCalendarStateCopyWithImpl<_$_LoadingCalendarState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DateTime selectedDate) loading,
    required TResult Function(DateTime selectedDate, List<EventModel> allEvents,
            List<EventModel> eventsOfDay)
        loadSuccess,
  }) {
    return loading(selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DateTime selectedDate)? loading,
    TResult? Function(DateTime selectedDate, List<EventModel> allEvents,
            List<EventModel> eventsOfDay)?
        loadSuccess,
  }) {
    return loading?.call(selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DateTime selectedDate)? loading,
    TResult Function(DateTime selectedDate, List<EventModel> allEvents,
            List<EventModel> eventsOfDay)?
        loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(selectedDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCalendarState value) initial,
    required TResult Function(_LoadingCalendarState value) loading,
    required TResult Function(_LoadSuccessCalendarState value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCalendarState value)? initial,
    TResult? Function(_LoadingCalendarState value)? loading,
    TResult? Function(_LoadSuccessCalendarState value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCalendarState value)? initial,
    TResult Function(_LoadingCalendarState value)? loading,
    TResult Function(_LoadSuccessCalendarState value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingCalendarState implements CalendarState {
  const factory _LoadingCalendarState({required final DateTime selectedDate}) =
      _$_LoadingCalendarState;

  DateTime get selectedDate;
  @JsonKey(ignore: true)
  _$$_LoadingCalendarStateCopyWith<_$_LoadingCalendarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadSuccessCalendarStateCopyWith<$Res> {
  factory _$$_LoadSuccessCalendarStateCopyWith(
          _$_LoadSuccessCalendarState value,
          $Res Function(_$_LoadSuccessCalendarState) then) =
      __$$_LoadSuccessCalendarStateCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {DateTime selectedDate,
      List<EventModel> allEvents,
      List<EventModel> eventsOfDay});
}

/// @nodoc
class __$$_LoadSuccessCalendarStateCopyWithImpl<$Res>
    extends _$CalendarStateCopyWithImpl<$Res, _$_LoadSuccessCalendarState>
    implements _$$_LoadSuccessCalendarStateCopyWith<$Res> {
  __$$_LoadSuccessCalendarStateCopyWithImpl(_$_LoadSuccessCalendarState _value,
      $Res Function(_$_LoadSuccessCalendarState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDate = null,
    Object? allEvents = null,
    Object? eventsOfDay = null,
  }) {
    return _then(_$_LoadSuccessCalendarState(
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      allEvents: null == allEvents
          ? _value._allEvents
          : allEvents // ignore: cast_nullable_to_non_nullable
              as List<EventModel>,
      eventsOfDay: null == eventsOfDay
          ? _value._eventsOfDay
          : eventsOfDay // ignore: cast_nullable_to_non_nullable
              as List<EventModel>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccessCalendarState implements _LoadSuccessCalendarState {
  const _$_LoadSuccessCalendarState(
      {required this.selectedDate,
      required final List<EventModel> allEvents,
      required final List<EventModel> eventsOfDay})
      : _allEvents = allEvents,
        _eventsOfDay = eventsOfDay;

  @override
  final DateTime selectedDate;
  final List<EventModel> _allEvents;
  @override
  List<EventModel> get allEvents {
    if (_allEvents is EqualUnmodifiableListView) return _allEvents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allEvents);
  }

  final List<EventModel> _eventsOfDay;
  @override
  List<EventModel> get eventsOfDay {
    if (_eventsOfDay is EqualUnmodifiableListView) return _eventsOfDay;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_eventsOfDay);
  }

  @override
  String toString() {
    return 'CalendarState.loadSuccess(selectedDate: $selectedDate, allEvents: $allEvents, eventsOfDay: $eventsOfDay)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccessCalendarState &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            const DeepCollectionEquality()
                .equals(other._allEvents, _allEvents) &&
            const DeepCollectionEquality()
                .equals(other._eventsOfDay, _eventsOfDay));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedDate,
      const DeepCollectionEquality().hash(_allEvents),
      const DeepCollectionEquality().hash(_eventsOfDay));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadSuccessCalendarStateCopyWith<_$_LoadSuccessCalendarState>
      get copyWith => __$$_LoadSuccessCalendarStateCopyWithImpl<
          _$_LoadSuccessCalendarState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DateTime selectedDate) loading,
    required TResult Function(DateTime selectedDate, List<EventModel> allEvents,
            List<EventModel> eventsOfDay)
        loadSuccess,
  }) {
    return loadSuccess(selectedDate, allEvents, eventsOfDay);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DateTime selectedDate)? loading,
    TResult? Function(DateTime selectedDate, List<EventModel> allEvents,
            List<EventModel> eventsOfDay)?
        loadSuccess,
  }) {
    return loadSuccess?.call(selectedDate, allEvents, eventsOfDay);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DateTime selectedDate)? loading,
    TResult Function(DateTime selectedDate, List<EventModel> allEvents,
            List<EventModel> eventsOfDay)?
        loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(selectedDate, allEvents, eventsOfDay);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCalendarState value) initial,
    required TResult Function(_LoadingCalendarState value) loading,
    required TResult Function(_LoadSuccessCalendarState value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCalendarState value)? initial,
    TResult? Function(_LoadingCalendarState value)? loading,
    TResult? Function(_LoadSuccessCalendarState value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCalendarState value)? initial,
    TResult Function(_LoadingCalendarState value)? loading,
    TResult Function(_LoadSuccessCalendarState value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccessCalendarState implements CalendarState {
  const factory _LoadSuccessCalendarState(
          {required final DateTime selectedDate,
          required final List<EventModel> allEvents,
          required final List<EventModel> eventsOfDay}) =
      _$_LoadSuccessCalendarState;

  DateTime get selectedDate;
  List<EventModel> get allEvents;
  List<EventModel> get eventsOfDay;
  @JsonKey(ignore: true)
  _$$_LoadSuccessCalendarStateCopyWith<_$_LoadSuccessCalendarState>
      get copyWith => throw _privateConstructorUsedError;
}
