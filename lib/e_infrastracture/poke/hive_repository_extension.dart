import 'package:dartz/dartz.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:kt_dart/kt.dart';
import 'package:sardunya/d_domain/poke/i_poke_repository.dart';
import 'package:sardunya/d_domain/poke/poke.dart';
import 'package:sardunya/d_domain/poke/poke_failure.dart';
import 'package:sardunya/e_infrastracture/poke/hive_poke_repository.dart';
import 'package:sardunya/e_infrastracture/poke/poke_dto.dart';

 // extension but workin like a data repository 
 // for handle to logicall issue about to Hive
extension HiveRepoX on IPokeRepository {


  Future<Either<PokeFailure, Unit>> hiveCreate(Poke poke) async {
    PokeDto pokeDto = PokeDto.fromDomain(poke);

    var box = Hive.box<PokeDto>(hivePokeBox);

    try {
      int id = await box.add(pokeDto);

      dynamic mapKey = ' ';

      box.toMap().forEach(
        (key, value) {
          if (value.id == pokeDto.id) {
            mapKey = key;
          }
        },
      );
      pokeDto = pokeDto.copyWith(databaseId: id);

      await box.put(mapKey, pokeDto);

      return right(unit);
    } catch (e) {
      return left(const PokeFailure.databaseNotFound());
    }
  }

 
  Future<Either<PokeFailure, Unit>> hiveUpdate(Poke poke) async {
    final PokeDto pokeDto = PokeDto.fromDomain(poke);
    try {
      var box = Hive.box<PokeDto>(hivePokeBox);

      dynamic mapKey = ' ';

      box.toMap().forEach(
        (key, value) {
          if (value.databaseId == pokeDto.databaseId) {
            mapKey = key;
          }
        },
      );

      await box.put(mapKey, pokeDto);
      return right(unit);
    } catch (e) {
      return left(const PokeFailure.databaseNotFound());
    }
  }


  Future<Option<Either<PokeFailure, KtList<Poke>>>> hiveReadAll() async {
    //  final PokeDto pokeDto = PokeDto.fromDomain(poke);
    var box = Hive.box<PokeDto>(hivePokeBox);

    try {
      if (box.isNotEmpty) {
        KtList<Poke> pokeKtlist =
            box.values.map((e) => e.toDomain()).toImmutableList();

        return some(right(pokeKtlist));
      } else {
        return none();
      }
    } catch (e) {
      return some(left(const PokeFailure.databaseNotFound()));
    }
  }

 
  Future<Either<PokeFailure, Unit>> hiveDelete(Poke poke) async {
    final PokeDto pokeDto = PokeDto.fromDomain(poke);
    try {
      var box = Hive.box<PokeDto>(hivePokeBox);
      dynamic mapKey = ' ';

      box.toMap().forEach(
        (key, value) {
          if (value.databaseId == pokeDto.databaseId) {
            mapKey = key;
          }
        },
      );

      await box.delete(mapKey);

      return right(unit);
    } catch (e) {
      return left(const PokeFailure.databaseNotFound());
    }
  }
}
