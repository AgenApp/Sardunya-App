import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sardunya/a_core/injection/injectable.dart';
import 'package:sardunya/a_core/router/app_router.gr.dart';
import 'package:sardunya/c_application/poke/poke_delete/poke_delete_cubit.dart';
import 'package:sardunya/c_application/poke/poke_form/poke_form_bloc.dart';
import 'package:sardunya/c_application/poke/poke_read/poke_read_cubit.dart';
import 'package:sardunya/c_application/user_profile/user_profile_cubit.dart';
import 'package:sardunya/d_domain/poke/notification/i_notification_repository.dart';

// Providing  main Blocs and  auto-route
class Sardunya extends StatelessWidget {
  Sardunya({Key? key}) : super(key: key);

// Auto-route object
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
   

    return MultiBlocProvider(
      providers: [
        _userProfileCubit(),
        _pokeReadCubit(),
        _pokeDeleteCubit(),
      ],
      child: RepositoryProvider(
        create: _notificationRepository,
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Sardunya',
          // auto-route integration
          routeInformationParser: _appRouter.defaultRouteParser(),
          routerDelegate: _appRouter.delegate(),
          // This style ↓ UPPERCASE SENTENCE not a explanation just for easy to spot
          //! APP THEME  
          theme: _themeData(),
        ),
      ),
    );
    
  }

  ThemeData _themeData() {
    return ThemeData(
            textSelectionTheme: TextSelectionThemeData(
                selectionHandleColor: Colors.grey.shade600));
  }

  INotificationRepository _notificationRepository(context) => getIt<INotificationRepository>();

  BlocProvider<PokeDeleteCubit> _pokeDeleteCubit() {
    return BlocProvider(
        create: (BuildContext context) => getIt<PokeDeleteCubit>(),
      );
  }

  BlocProvider<UserProfileCubit> _userProfileCubit() {
    return BlocProvider(
      create: (BuildContext context) => getIt<UserProfileCubit>()..read(),
    );
  }

  BlocProvider<PokeReadCubit> _pokeReadCubit() {
    return BlocProvider(
        create: (BuildContext context) =>
            getIt<PokeReadCubit>()..pokeReadAll(),
      );
  }
}
