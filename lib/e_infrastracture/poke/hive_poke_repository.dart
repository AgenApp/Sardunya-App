import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:sardunya/d_domain/poke/i_poke_repository.dart';
import 'package:sardunya/d_domain/poke/poke_failure.dart';
import 'package:sardunya/d_domain/poke/poke.dart';
import 'package:sardunya/e_infrastracture/poke/hive_repository_extension.dart';

// working like handle repository and just contain main methods and initializer methods 
// only routing be done 
const String hivePokeBox = 'HivePokeBox';


@LazySingleton(as: IPokeRepository)
class HivePokeRepository implements IPokeRepository {
  HivePokeRepository();

  @override
  Future<Either<PokeFailure, Unit>> create(Poke poke) async {
    var result = await hiveCreate(poke);
    return result;
  }

  @override
  Future<Either<PokeFailure, Unit>> update(Poke poke) async {
   var result = await hiveUpdate(poke);
    return result;
    }
  

  @override
  Future<Option<Either<PokeFailure, KtList<Poke>>>> readAll() async {
    var result = await hiveReadAll();
    return result;
  }

  @override
  Future<Either<PokeFailure, Unit>> delete(Poke poke) async {
    var result = await hiveDelete(poke);
    return result;
  }
}
