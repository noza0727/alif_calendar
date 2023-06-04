import 'package:alif_calendar/core/db/cache_storage/calendar_cache_storage.dart';
import 'package:alif_calendar/core/db/cache_storage/calendar_cache_storage_impl.dart';
import 'package:alif_calendar/core/db/sqlite_db.dart';
import 'package:alif_calendar/core/dependency_injection/di_configuration.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

const assemble = _Assemble();

final _getIt = GetIt.instance;

class _Assemble {
  const _Assemble();

  CalendarDatabase get database => _getIt.get();

  CalendarCacheStorage get calendarCacheStorage => _getIt.get();
}

@injectableInit
GetIt configureInjection() => _getIt.init();

@module
abstract class RealAssembleModule {
  @injectable
  CalendarDatabase database() => CalendarDatabase.instance;

  @injectable
  CalendarCacheStorage calendarCacheStorage(CalendarDatabase database) =>
      CalendarCacheStorageImpl(calendarDatabase: database);
}
