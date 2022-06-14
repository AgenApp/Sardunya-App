import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:sardunya/a_core/injection/injectable.config.dart';

// Provided getIt Object
final getIt =GetIt.instance;
// Initialize Settings
@InjectableInit()
// Initialize method
void configureDependecies() => $initGetIt(getIt);
