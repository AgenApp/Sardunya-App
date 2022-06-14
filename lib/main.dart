import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sardunya/a_core/injection/injectable.dart';
import 'package:sardunya/b_presentation/core/sardunya.dart';
import 'package:sardunya/d_domain/user_profile/user_profile.dart';
import 'package:sardunya/e_infrastracture/poke/hive_poke_repository.dart';
import 'package:sardunya/e_infrastracture/poke/poke_dto.dart';
import 'package:sardunya/e_infrastracture/user_profile/user_profile_repository.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Google font licensing issue
  await _googleFontLicenses();
  // Hive initializing processes 
  await _hive();
  // Time zone database for notification package
  tz.initializeTimeZones();
  // Injection package init method
  configureDependecies();
  // About Status Bar Settings
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );

  runApp(Sardunya());
}

Future<void> _googleFontLicenses() async {
  LicenseRegistry.addLicense(
    () async* {
      final license = await rootBundle.loadString('google_fonts/OFL.txt');
      yield LicenseEntryWithLineBreaks(['google_fonts'], license);
    },
  );
}

Future<void> _hive() async {
  await Hive.initFlutter();
  Hive
    ..registerAdapter(PokeDtoAdapter())
    ..registerAdapter(UserProfileAdapter());
  await Hive.openBox<PokeDto>(hivePokeBox);
  await Hive.openBox<UserProfile>(hiveUserProfileBox);
}
