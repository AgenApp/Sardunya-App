import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sardunya/b_presentation/main/home_page/home_page.dart';
import 'package:sardunya/c_application/poke/poke_read/poke_read_cubit.dart';
import 'package:sardunya/d_domain/poke/notification/i_notification_repository.dart';

extension HomePageX on State<HomePage> {

  // Initializing notification and auto-Check active poke
  void initExtention(
      INotificationRepository notificationRepository, Timer timer) {
    notificationinitializer(notificationRepository);
    autoActivePokeChacker(timer);
  }

  void disposeExtention(Timer timer) {
    timer.cancel();
  }

  // Which Poke match current time (Poke is main object and  contain time, label and content)
  void autoActivePokeChacker(Timer timer) async {
    context.read<PokeReadCubit>().pokeReadAll();

    Future.delayed(setTimerTime()).then(
      (value) => timer = Timer.periodic(
        const Duration(minutes: 5),
        (_) {
          context.read<PokeReadCubit>().pokeReadAll();
        },
      ),
    );
  }

  // Notification setter fine adjustment
  Duration setTimerTime() {
    return Duration(
      seconds: (4 - (DateTime.now().minute % 5) * 60) +
          (60 - (DateTime.now().second - 1)),
    );
  }

  // Initializing notification
  void notificationinitializer(
      INotificationRepository notificationRepository) async {
    await notificationRepository.initNotification();
  }
}
