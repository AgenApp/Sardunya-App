import 'package:kt_dart/collection.dart';
import 'package:sardunya/b_presentation/main/home_page/widgets/poke_stepper/poke_stepper.dart';
import 'package:sardunya/d_domain/poke/poke.dart';

extension KtListX on KtList<Poke> {
  KtList<Poke> reListChronologically() {
    return sortedWith((a, b) =>
        a.time.getOrError().inMinutes.compareTo(b.time.getOrError().inMinutes));
  }
}

extension PokeStepperX on PokeStepper {

  // Is this selected object
  bool isCurrent(int index) {
    return index == currentStep;
  }
  // Is this  object matched with DateTime.now()
  bool isActive(int index) {
    bool result;

    var currentTimeAsMinuteInt =
        DateTime.now().minute + (DateTime.now().hour * 60);

    int compareIndex = pokeList.indexOfFirst(
        (poke) => poke.time.getOrError().inMinutes >= currentTimeAsMinuteInt);
    compareIndex = compareIndex == -1 ? 0 : compareIndex;
    result = index == compareIndex;
    return result;
  }
  // Is this object before active object
  bool isPrevious(int index) {
    bool result;

    var currentTimeAsMinuteInt =
        DateTime.now().minute + (DateTime.now().hour * 60);
    result =
        pokeList[index].time.getOrError().inMinutes < currentTimeAsMinuteInt
            ? true
            : false;

    return result;
  }

  // Is this object later active object
  bool isNext(int index) {
    bool result;

    var currentTimeAsMinuteInt =
        DateTime.now().minute + (DateTime.now().hour * 60);
    if (!isActive(index)) {
      result =
          pokeList[index].time.getOrError().inMinutes > currentTimeAsMinuteInt
              ? true
              : false;
      return result;
    } else {
      return false;
    }
  }

  // Is this object last object
   bool isLast(int index) {
    return index == pokeList.lastIndex;
  }
}
