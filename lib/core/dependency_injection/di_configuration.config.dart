// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:alif_calendar/core/db/cache_storage/calendar_cache_storage.dart'
    as _i4;
import 'package:alif_calendar/core/db/sqlite_db.dart' as _i3;
import 'package:alif_calendar/core/dependency_injection/di_configuration.dart'
    as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final realAssembleModule = _$RealAssembleModule();
    gh.factory<_i3.CalendarDatabase>(() => realAssembleModule.database());
    gh.factory<_i4.CalendarCacheStorage>(() =>
        realAssembleModule.calendarCacheStorage(gh<_i3.CalendarDatabase>()));
    return this;
  }
}

class _$RealAssembleModule extends _i5.RealAssembleModule {}
