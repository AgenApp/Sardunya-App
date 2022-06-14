import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/subjects.dart';
// Registering third party types at injectable package
@module
abstract class HiveRegister{
@singleton
BehaviorSubject get behaviorSubject =>BehaviorSubject();
}
