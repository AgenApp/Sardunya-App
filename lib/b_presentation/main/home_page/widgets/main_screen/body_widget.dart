import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kt_dart/kt.dart';
import 'package:sardunya/b_presentation/main/home_page/widgets/form_dss_widget.dart';
import 'package:sardunya/b_presentation/main/home_page/widgets/poke_stepper/poke_stepper.dart';
import 'package:sardunya/b_presentation/main/home_page/widgets/poke_stepper/poke_stepper_extension.dart';
import 'package:sardunya/c_application/poke/poke_delete/poke_delete_cubit.dart';
import 'package:sardunya/c_application/poke/poke_read/poke_read_cubit.dart';
import 'package:sardunya/d_domain/poke/poke.dart';

class BodyWidget extends HookWidget {
  const BodyWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ValueNotifier<int> currentPoke = useState<int>(0);

    return BlocListener<PokeDeleteCubit, PokeDeleteState>(
      listener: ((context, state) {
        // You can handle multi cases but I just take success,
        // cause this is very first version and need feature other version you know
        state.map(
          initial: (e) {},
          progress: (e) {},
          success: (e) {
            context.read<PokeReadCubit>().pokeReadAll();
          },
          failure: (e) {},
        );
      }),
      child: BlocBuilder<PokeReadCubit, PokeReadState>(
        builder: (context, state) {
          //  You can handle multi cases but I just take success,
          return state.map(
            initial: (_) {
              return const Center(child: Text('initial'));
            },
            loadingProgress: (_) {
              return const Center(child: Text('loading'));
            },
            loadingSuccess: (e) {
              // Poke is main presentation object name.
              return Column(
                children: [
                  e.pokeList.isEmpty()
                      ? _buildEmptyListCaseBody(context)
                      : _buildMainBody(currentPoke, context, e.pokeList),
                ],
              );
            },
            loadingFailure: (e) {
              return const Center(child: Text('failure'));
            },
          );
        },
      ),
    );
  }

  Expanded _buildMainBody(ValueNotifier<int> currentPoke, BuildContext context,
      KtList<Poke> pokeList) {
    return Expanded(
      flex: 1,
      // PokeStepper is  widget, handle the pokes (Poke is main object and contain time, label and content)
      child: PokeStepper(
        currentStep: currentPoke.value,
        onTappedEditIcon: (index) {
          _buildShowModalBottomSheet(context, pokeList, index);
        },
        onTappedItem: (index) {
          currentPoke.value = index;
        },
        onTappedDeleteIcon: (index) {
          context.read<PokeDeleteCubit>().pokeDelete(
                pokeList.reListChronologically()[index],
              );
        },
        pokeList: pokeList,
      ),
    );
  }

  Future<dynamic> _buildShowModalBottomSheet(
    BuildContext context,
    [KtList<Poke>? pokeList,
    int? index]
  ) {
    return showModalBottomSheet(
      isDismissible: true,
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (contex) => FormDSS(
        poke: pokeList == null
            ? Poke.empty()
            : pokeList.reListChronologically()[index!],
      ),
    );
  }

  Widget _buildEmptyListCaseBody(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await _buildShowModalBottomSheet(context);
      },
      child: Align(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            Icon(
              Icons.add_box_outlined,
              color: Colors.black12,
              size: MediaQuery.of(context).size.width - 150,
            ),
            const SizedBox(
                width: 90, child: Divider(thickness: 8, color: Colors.black12)),
          ],
        ),
      ),
    );
  }
}
