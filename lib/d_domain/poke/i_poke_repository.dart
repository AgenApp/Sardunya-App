import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:sardunya/d_domain/poke/poke.dart';
import 'package:sardunya/d_domain/poke/poke_failure.dart';

// Kind of plan for infrastracture. what must we implementation 
abstract class IPokeRepository {
  Future<Either<PokeFailure, Unit>> create(Poke poke);
  Future<Either<PokeFailure, Unit>> update(Poke poke);
  Future<Option<Either<PokeFailure, KtList<Poke>>>> readAll();
  Future<Either<PokeFailure, Unit>> delete(Poke poke);
}