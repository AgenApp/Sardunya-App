// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:rxdart/subjects.dart' as _i3;

import '../../c_application/landing_cubit/landing_cubit.dart' as _i12;
import '../../c_application/poke/poke_delete/poke_delete_cubit.dart' as _i13;
import '../../c_application/poke/poke_form/poke_form_bloc.dart' as _i14;
import '../../c_application/poke/poke_read/poke_read_cubit.dart' as _i15;
import '../../c_application/user_profile/user_profile_cubit.dart' as _i16;
import '../../d_domain/poke/i_poke_repository.dart' as _i6;
import '../../d_domain/poke/i_poke_traffic_repository.dart' as _i8;
import '../../d_domain/poke/notification/i_notification_repository.dart' as _i4;
import '../../d_domain/user_profile/i_user_profile_repository.dart' as _i10;
import '../../e_infrastracture/core/hive_injection_module.dart' as _i17;
import '../../e_infrastracture/notification/notification_repository.dart'
    as _i5;
import '../../e_infrastracture/poke/hive_poke_repository.dart' as _i7;
import '../../e_infrastracture/poke/poke_traffic_repository.dart' as _i9;
import '../../e_infrastracture/user_profile/user_profile_repository.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final hiveRegister = _$HiveRegister();
  gh.singleton<_i3.BehaviorSubject<dynamic>>(hiveRegister.behaviorSubject);
  gh.lazySingleton<_i4.INotificationRepository>(
      () => _i5.NotificationRepository());
  gh.lazySingleton<_i6.IPokeRepository>(() => _i7.HivePokeRepository());
  gh.lazySingleton<_i8.IPokeTrafficRepository>(() => _i9.PokeTraficRepository(
      get<_i6.IPokeRepository>(), get<_i4.INotificationRepository>()));
  gh.lazySingleton<_i10.IUserProfileRepository>(
      () => _i11.UserProfileRepository());
  gh.factory<_i12.LandingCubit>(() => _i12.LandingCubit());
  gh.factory<_i13.PokeDeleteCubit>(
      () => _i13.PokeDeleteCubit(get<_i8.IPokeTrafficRepository>()));
  gh.factory<_i14.PokeFormBloc>(
      () => _i14.PokeFormBloc(get<_i8.IPokeTrafficRepository>()));
  gh.factory<_i15.PokeReadCubit>(
      () => _i15.PokeReadCubit(get<_i6.IPokeRepository>()));
  gh.factory<_i16.UserProfileCubit>(
      () => _i16.UserProfileCubit(get<_i10.IUserProfileRepository>()));
  return get;
}

class _$HiveRegister extends _i17.HiveRegister {}
