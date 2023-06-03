import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_bloc.freezed.dart';

class CalendarBloc extends Bloc<CalendarTableEvent, CalendarTableState> {
  CalendarBloc() : super(CalendarTableState.initial()) {
    on<CalendarTableEvent>(
      (event, emitter) async {
        await event.mapOrNull<Future<void>>();
      },
    );
    add(const CalendarTableEvent.loadInitialHandler());
  }

  late final DateTime _today;

  Future<void> _loadInitialHandler(
    _LoadInitialCalendarTableEvent event,
    Emitter emitter,
  ) async {
    _today = DateTime.now();
    // emitter(CalendarTableState.loading());
  }
}

@freezed
class CalendarTableEvent with _$CalendarTableEvent {
  const factory CalendarTableEvent.loadInitialHandler() =
      _LoadInitialCalendarTableEvent;

  const factory CalendarTableEvent.nextMonth() = _NextMonthCalendarTableEvent;

  const factory CalendarTableEvent.previousMonth() =
      _PreviosMonthCalendarTableEvent;
}

@freezed
class CalendarTableState with _$CalendarTableState {
  const factory CalendarTableState.initial() = _InitialCalendarTableState;

  const factory CalendarTableState.loading() = _LoadingCalendarTableState;

  const factory CalendarTableState.loadSuccess() =
      _LoadSuccessCalendarTableState;
}
