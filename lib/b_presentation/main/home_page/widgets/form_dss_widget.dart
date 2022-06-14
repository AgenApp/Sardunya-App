import 'package:another_flushbar/flushbar_helper.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sardunya/a_core/extensions/duration_extention.dart';
import 'package:sardunya/a_core/injection/injectable.dart';
import 'package:sardunya/c_application/poke/poke_delete/poke_delete_cubit.dart';
import 'package:sardunya/c_application/poke/poke_form/poke_form_bloc.dart';
import 'package:sardunya/c_application/poke/poke_read/poke_read_cubit.dart';
import 'package:sardunya/d_domain/poke/poke.dart';

// I can tried to use descriptive method naming for less description line
class FormDSS extends HookWidget {
  FormDSS({
    Key? key,
    required this.poke,
  }) : super(key: key);
  final Poke poke;

  late ValueNotifier<int> pageState;
  late ValueNotifier<int> indexStackIndexState;
  late PageController pageController;
  @override
  Widget build(BuildContext context) {
    pageState = useState(0);
    indexStackIndexState = useState(0);
    pageController = usePageController(initialPage: 0);

        // MultiBlocProvider for legibility
      return MultiBlocProvider(
      providers: [
        _providePokeFormBloc(),
      ],
      child: BlocProvider<PokeReadCubit>.value(
        value: providePokeReadCubitValue(context),
        child: MultiBlocListener(
          listeners: [
            _listenPokeDeleteCubit(),
            _listenPokeFormBlocForRefrashPage(),
            _listenPokeBlocForErrors(),
          ],
          child: BlocBuilder<PokeFormBloc, PokeFormState>(
            builder: (context, state) {
              return _buildDSS( state, context);
            },
          ),
        ),
      ),
    );
  }

  DraggableScrollableSheet _buildDSS(PokeFormState state, BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.8,
      maxChildSize: 0.8,
      builder: (_, ScrollController scrollController) {
        return _buildDSSContent(state, context);
      },
    );
  }

  Container _buildDSSContent(PokeFormState state, BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      padding: const EdgeInsets.fromLTRB(24, 4, 24, 0),
      child: Column(children: [
        _buildTopButton(state, context, pageController),
        _buildTopButtonDivider(),
        _buildMainMenu(state, context)
      ]),

      //
    );
  }

  PokeReadCubit providePokeReadCubitValue(BuildContext context) =>
      BlocProvider.of<PokeReadCubit>(context);

  BlocListener<PokeFormBloc, PokeFormState> _listenPokeBlocForErrors() {
    return BlocListener<PokeFormBloc, PokeFormState>(
      listenWhen: (previous, current) {
        return previous.saveSuccessOrFailureOption !=
            current.saveSuccessOrFailureOption;
      },
      listener: (context, state) {
        state.saveSuccessOrFailureOption.fold(
          () {},
          (either) => either.fold(
            (eitherFailure) {
              FlushbarHelper.createError(
                message: eitherFailure.fold(
                    (pokeFailure) => pokeFailure.map(
                          (value) => 'There is a problem.',
                          trafficCRUD: (_) => 'Poke Repository Error',
                          databaseNotFound: (_) => 'Poke Database Error',
                        ),
                    (notificationFailure) => notificationFailure.map(
                          (value) => 'There is a problem  ',
                          dbInsertFail: (_) => 'notification Error',
                          dbDeleteFail: (_) => 'notification Error',
                          dbReadFail: (_) => 'notification Error',
                          dbUpdateFail: (_) => 'notification Error',
                          trafficCRUD: (_) => 'notification Error',
                        )),
              ).show(context);
            },
            (_) {
              context.read<PokeReadCubit>().pokeReadAll();
              context.router.pop();

              ;
            },
            //  context.router.pop(),
          ),
        );
      },
    );
  }

  BlocListener<PokeFormBloc, PokeFormState>
      _listenPokeFormBlocForRefrashPage() {
    return BlocListener<PokeFormBloc, PokeFormState>(
      listenWhen: (previous, current) => previous.isSaving != current.isSaving,
      listener: (context, state) {
        context.read<PokeReadCubit>().pokeReadAll();
      },
    );
  }

  BlocListener<PokeDeleteCubit, PokeDeleteState> _listenPokeDeleteCubit() {
    return BlocListener<PokeDeleteCubit, PokeDeleteState>(
      listenWhen: (previous, current) => previous != current,
      listener: (context, state) {},
    );
  }

  BlocProvider<PokeFormBloc> _providePokeFormBloc() {
    return BlocProvider(
      create: (BuildContext context) => getIt<PokeFormBloc>()
        ..add(
          PokeFormEvent.initialized(poke),
        ),
    );
  }

  _buildMainMenu(    PokeFormState state,
      BuildContext context) {
    return Expanded(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: PageView(
            scrollBehavior: MyScrollBehavior(),
            controller: pageController,
            physics: pageState.value == 0
                ? const NeverScrollableScrollPhysics()
                : const ScrollPhysics(),
            onPageChanged: (index) {
              pageState.value = index;
            },
            children: [
              _buildMenuItems(
                   state, context),
              _buildSecondView(
                   state, context)
            ]),
      ),
    );
  }

  IndexedStack _buildSecondView(
     
      PokeFormState state,
      BuildContext context) {
    return IndexedStack(
      index: indexStackIndexState.value,
      children: [
        _buildSecondViewTimePage( state, context),
        _buildSecondViewLabelPage(
            state, context),
        _buildSecondViewContentPage(
             state, context),
      ],
    );
  }

  Column _buildSecondViewContentPage(
      
      PokeFormState state,
      BuildContext context) {
    return Column(
      children: [
        _buildSecondViewTopBar('CONTENT'),
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: TextFormField(
            style: GoogleFonts.roboto(fontSize: 16, color: Colors.black54),
            onChanged: (value) {
              context.read<PokeFormBloc>().add(
                    PokeFormEvent.contentChanced(value),
                  );
            },
            initialValue: state.poke.content.getOrError(),
            autofocus: indexStackIndexState.value == 2 ? true : false,
            maxLines: 3,
            focusNode: FocusNode(canRequestFocus: false),
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
        )
      ],
    );
  }

  Column _buildSecondViewLabelPage(
      
      PokeFormState state,
      BuildContext context) {
    return Column(
      children: [
        _buildSecondViewTopBar('LABEL'),
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: TextFormField(
            cursorColor: Colors.grey.shade600,
            initialValue: state.poke.title.getOrError(),
            onChanged: (value) {
              context.read<PokeFormBloc>().add(
                    PokeFormEvent.titleChanged(value),
                  );
            },
            autofocus: indexStackIndexState.value == 1 ? true : false,
            focusNode: FocusNode(
              canRequestFocus: false,
            ),
            style: GoogleFonts.roboto(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black54),
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
        )
      ],
    );
  }

  Column _buildSecondViewTimePage( PokeFormState state, BuildContext context) {
    return Column(
      children: [
        _buildSecondViewTopBar('TIME'),
        CupertinoTimerPicker(
          initialTimerDuration: state.poke.time.getOrError(),
          minuteInterval: 5,
          mode: CupertinoTimerPickerMode.hm,
          onTimerDurationChanged: (duration) {
            context
                .read<PokeFormBloc>()
                .add(PokeFormEvent.timeChanced(duration));
          },
        ),
      ],
    );
  }

  Widget _buildSecondViewTopBar(String text,) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            InkWell(
              onTap: () {
                pageController.previousPage(
                    duration: Duration(milliseconds: 400),
                    curve: Curves.fastOutSlowIn);
              },
              child: Container(
                padding: EdgeInsets.only(right: 16),
                height: 48,
                child: Row(
                  children: [
                    const Icon(
                      Icons.keyboard_arrow_left,
                      color: Colors.black54,
                    ),
                    Text(
                      text,
                      style: GoogleFonts.roboto(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.black54),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(child: SizedBox())
          ],
        ),
        const Align(
          alignment: Alignment.centerLeft,
          child: SizedBox(
            width: 90,
            child: Divider(
                indent: 25, endIndent: 25, height: 1, color: Colors.black54),
          ),
        ),
      ],
    );
  }

  Column _buildMenuItems(
    
      PokeFormState state,
      BuildContext context) {
    return Column(
      children: [
        SettingListTileWidget(
          onPressed: () {
            indexStackIndexState.value = 0;
            pageController.nextPage(
                duration: Duration(milliseconds: 400),
                curve: Curves.fastOutSlowIn);
          },
          leadingText: 'TIME',
          trailingText: state.poke.time.getOrError().toTimeAsString,
        ),
        _buildListTileDivider(),
        SettingListTileWidget(
          onPressed: () {
            indexStackIndexState.value = 1;
            pageController.nextPage(
                duration: Duration(milliseconds: 400),
                curve: Curves.fastOutSlowIn);
          },
          leadingText: 'LABEL',
          trailingText: state.poke.title.getOrError(),
        ),
        _buildListTileDivider(),
        SettingListTileWidget(
          onPressed: () {
            indexStackIndexState.value = 2;
            pageController.nextPage(
                duration: Duration(milliseconds: 400),
                curve: Curves.fastOutSlowIn);
          },
          leadingText: 'CONTENT',
          trailingText: state.poke.content.getOrError(),
        ),
        _buildListTileDivider(),
        SettingListTileWidget(
          onPressed: () {
            indexStackIndexState.value = 2;
            pageController.nextPage(
                duration: Duration(milliseconds: 400),
                curve: Curves.fastOutSlowIn);
          },
          leadingText: 'NOTIFICATION',
          trailingWidget: Switch(
            onChanged: null,
            value: true,
            inactiveTrackColor: Color(0xffff6868).withAlpha(50),
            inactiveThumbColor: Color(0xffff6868).withAlpha(90),
          ),
        ),
        _buildSettingsButtonBar(state, context),
      ],
    );
  }

  Padding _buildSettingsButtonBar(PokeFormState state, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 48.0),
      child: ButtonBar(
        buttonPadding: EdgeInsets.zero,
        children: [
          TextButton(
            onPressed: () {
              context.router.pop();
            },
            child: Text(
              "CANCEL",
              style: GoogleFonts.roboto(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  color: Colors.black54),
            ),
          ),
          OutlinedButton(
              onPressed: () {
                context
                    .read<PokeFormBloc>()
                    .add(PokeFormEvent.saved(state.poke.id));
              },
              child: Row(
                children: [
                  const Icon(
                    Icons.done,
                    color: Colors.black54,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    "SAVE",
                    style: GoogleFonts.roboto(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  ),
                ],
              ))
        ],
      ),
    );
  }

  Align _buildListTileDivider() {
    return const Align(
        alignment: Alignment.centerLeft,
        child: FractionallySizedBox(
            widthFactor: .12,
            child: Divider(
                indent: 16, height: 1, thickness: 1, color: Colors.black45)));
  }

  FractionallySizedBox _buildTopButtonDivider() {
    return const FractionallySizedBox(
        widthFactor: 2 / 5,
        child: Divider(
          height: 7,
          color: Colors.black38,
          thickness: 1,
        ));
  }

  Container _buildTopButton(
    PokeFormState state,
    BuildContext context,
    PageController pageController,
  ) {
    return Container(
      height: 40,
      alignment: Alignment.center,
      child: FractionallySizedBox(
        widthFactor: .50,
        child: SizedBox(
          child: IconButton(
            iconSize: 34,
            color: Colors.black54,
            icon: const Icon(
              Icons.done,
            ),
            onPressed: () {
              pageController.page == 0
                  ? context
                      .read<PokeFormBloc>()
                      .add(PokeFormEvent.saved(state.poke.id))
                  : pageController.previousPage(
                      duration: Duration(milliseconds: 400),
                      curve: Curves.fastOutSlowIn);
            },
          ),
        ),
      ),
    );
  }
}

class SettingListTileWidget extends StatelessWidget {
  const SettingListTileWidget({
    Key? key,
    required this.leadingText,
    this.trailingText = '',
    this.trailingWidget,
    required this.onPressed,
  }) : super(key: key);
  final Widget? trailingWidget;
  final String leadingText;
  final String trailingText;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: trailingWidget == null ? () => onPressed?.call() : null,
      child: SizedBox(
        height: 48,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildLeading(),
            _buildTrailing(),
          ],
        ),
      ),
    );
  }

  Flexible _buildTrailing() {
    return Flexible(
      flex: 2,
      child: SizedBox(
        // color: Colors.amber,
        child: trailingWidget ??
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  flex: 4,
                  child: RichText(
                    overflow: TextOverflow.ellipsis,
                    text: TextSpan(
                      text: trailingText,
                      style: GoogleFonts.roboto(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.black54),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Flexible(
                    flex: 1,
                    child: Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.black54,
                    )),
              ],
            ),
      ),
    );
  }

  Flexible _buildLeading() {
    return Flexible(
      flex: trailingWidget == null ? 1 : 2,
      child: Text(
        leadingText,
        style: GoogleFonts.roboto(
            fontSize: 20, fontWeight: FontWeight.normal, color: Colors.black54),
      ),
    );
  }
}

class MyScrollBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
