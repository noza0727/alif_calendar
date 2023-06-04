import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_creation_bloc.freezed.dart';

class EventCreationBloc extends Bloc<EventCreationEvent, EventCreationState> {
  EventCreationBloc() : super(EventCreationState.initial()) {
    on<EventCreationEvent>((event, emitter) async {
      event.map(
        createEvent: (_CreateEventCreationEvent event) =>
            _createEvent(event, emitter),
      );
    });
  }

  Future<void> _createEvent(
    _CreateEventCreationEvent event,
    Emitter emitter,
  ) async {
    print('creating');
  }
}

@freezed
class EventCreationEvent with _$EventCreationEvent {
  const factory EventCreationEvent.createEvent() = _CreateEventCreationEvent;
}

@freezed
class EventCreationState with _$EventCreationState {
  const factory EventCreationState.initial() = _InitialEventCreationState;

  const factory EventCreationState.loading() = _LoadingEventCreationState;

  const factory EventCreationState.createSuccess() =
      _CreateSuccessEventCreationState;
}
