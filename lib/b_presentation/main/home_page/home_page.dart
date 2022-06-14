import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sardunya/a_core/injection/injectable.dart';
import 'package:sardunya/b_presentation/main/home_page/home_page_extention.dart';
import 'package:sardunya/b_presentation/main/home_page/widgets/landing_screen.dart';
import 'package:sardunya/b_presentation/main/home_page/widgets/main_screen/main_screen_widget.dart';
import 'package:sardunya/c_application/landing_cubit/landing_cubit.dart';

import 'package:sardunya/d_domain/poke/notification/i_notification_repository.dart';

class HomePage extends StatefulHookWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HookPageState createState() => _HookPageState();
}

class _HookPageState extends State<HomePage> {
  late INotificationRepository _notificationRepository;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    // Initializing notification 
    _notificationRepository = getIt<INotificationRepository>();
    timer = Timer(Duration.zero, () => timer.cancel());
    initExtention(_notificationRepository, timer);
    //
  }

  @override
  void dispose() {
    disposeExtention(timer);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      // MultiBlocProvadir for legibility cause clean_code = legibilty
      return MultiBlocProvider(
        providers: [
          // initialize showing time to landingScreen  for 4000 millisecond
          _landingCubit(4000),
        ],
        child:
            BlocBuilder<LandingCubit, LandingState>(builder: (context, state) {
          // This cubit state auto change
          return state.map(
            landingScreen: (e) => const LandingScreenWidget(),
            mainScreen: (e) => const MainScreenWidget(),
          );
          // return LandingScreen();
        }),
      );
    });
  }

  BlocProvider<LandingCubit> _landingCubit(int waitingTimeAsMillisecond) {
    return BlocProvider(
      create: (context) =>
          getIt<LandingCubit>()..changeScreen(waitingTimeAsMillisecond),
    );
  }
}

