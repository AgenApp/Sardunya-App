import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kt_dart/kt.dart';
import 'package:sardunya/a_core/extensions/duration_extention.dart';
import 'package:sardunya/b_presentation/main/home_page/widgets/poke_stepper/poke_stepper_extension.dart';
import 'package:sardunya/d_domain/poke/poke.dart';


class PokeStepper extends HookWidget {
  const PokeStepper._(
      {super.key,
      required this.pokeList,
      this.onTappedItem,
      this.onTappedEditIcon,
      this.onTappedDeleteIcon,
      required this.globalKeyList,
      this.currentStep = 0});

  factory PokeStepper(
      {Key? key,
      required KtList<Poke> pokeList,
      ValueChanged<int>? onTappedItem,
      ValueChanged<int>? onTappedEditIcon,
      ValueChanged<int>? onTappedDeleteIcon,
      int currentStep = 0}) {
    return PokeStepper._(
      key: key,
      pokeList: pokeList.reListChronologically(),
      onTappedEditIcon: onTappedEditIcon,
      onTappedDeleteIcon: onTappedDeleteIcon,
      onTappedItem: onTappedItem,
      currentStep: currentStep,
      globalKeyList:
          List<GlobalKey>.generate(pokeList.size, (index) => GlobalKey()),
    );
  }
  final List<GlobalKey> globalKeyList;
  final KtList<Poke> pokeList;
  final ValueChanged<int>? onTappedItem;
  final ValueChanged<int>? onTappedDeleteIcon;
  final int currentStep;
  final ValueChanged<int>? onTappedEditIcon;

  final _lineColor = Colors.black38;
  Future<void> animatedContainerCloser() async {
    onTappedItem?.call(-1);
  }

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    return ListView.builder(
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: pokeList.size,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            isCurrent(index) ? _buildContainerTopBar(index) : SizedBox(),
            _buildInkWellMainContainer(index, deviceWidth),
            _buildEndSpace(index),
            // _buildCrossFadeContainer(index, context),
          ],
        );
      },
    );
  }

  SizedBox _buildEndSpace(int index) {
    return isLast(index)
        ? const SizedBox(
            height: 360,
          )
        : const SizedBox();
  }

  SizedBox _buildContainerTopBar(int index) {
    return SizedBox(
      height: 48,
      child: Row(children: [
        Flexible(
          flex: 1,
          child: Container(
            alignment: Alignment.center,
            child: const VerticalDivider(
              thickness: 2,
              color: Colors.black38,
            ),
          ),
        ),
        _buildButtonsBar(index),
      ]),
    );
  }

  Flexible _buildButtonsBar(int index) {
    return Flexible(
      flex: 2,
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 24, 15, 0),
        alignment: Alignment.centerRight,
        child: SizedBox(
          child: ButtonBar(
              buttonMinWidth: 50,
              buttonPadding: EdgeInsets.zero,
              alignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    onTappedEditIcon?.call(index);
                  },
                  icon: Icon(Icons.edit, color: Colors.black45),
                ),
                const VerticalDivider(
                  thickness: 1,
                  color: Colors.black45,
                  indent: 4,
                  endIndent: 4,
                ),
                IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      onTappedDeleteIcon?.call(index);
                    },
                    icon:
                        Icon(Icons.delete_forever, color: Colors.red.shade400)),
              ]),
        ),
      ),
    );
  }

  InkWell _buildInkWellMainContainer(int index, double deviceWidth) {
    return InkWell(
      onTap: () {
        animatedContainerCloser().then(
          (value) {
            Scrollable.ensureVisible(
              globalKeyList[index].currentContext!,
              duration: kTabScrollDuration,
              alignment: 3 / 10,
            ).then(
              (value) {
                onTappedItem?.call(index);
              },
            );
          },
        );
      },
      child: _buildMainContainer(index, deviceWidth),
    );
  }

  Builder _buildMainContainer(int index, double deviceWidth) {
    return Builder(builder: (context) {
      return AnimatedContainer(
        curve: Curves.ease,
        width: deviceWidth,
        key: globalKeyList[index],
        height: isCurrent(index) ? 164.0 : 90.0,
        duration: kThemeAnimationDuration,
        child: Row(
          children: [
            _buildTime(index, context),
            _buildTexts(index, context),
          ],
        ),
      );
    });
  }

  Flexible _buildTexts(int index, BuildContext context) {
    return Flexible(
      flex: 2,
      child: Container(
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.fromLTRB(4, 4, 24, 4),
        // padding: const EdgeInsets.only(left: 20),
        child: Column(
          children: [
            Expanded(
              flex: isCurrent(index) ? 6 : 24,
              child: AnimatedContainer(
                alignment: isCurrent(index)
                    ? Alignment.centerLeft
                    : Alignment.bottomLeft,
                duration: kThemeAnimationDuration,
                child: RichText(
                  overflow: isCurrent(index)
                      ? TextOverflow.clip
                      : TextOverflow.ellipsis,
                  text: TextSpan(
                    text: pokeList[index].title.getOrError(),
                    style: GoogleFonts.roboto(fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: getStateColor(index)),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: isCurrent(index) ? 11 : 16,
              child: AnimatedContainer(
                padding: EdgeInsets.only(
                    top: isCurrent(index) ? 12 : 0,
                    bottom: isCurrent(index) ? 12 : 0),
                alignment: Alignment.topLeft,
                duration: kThemeAnimationDuration,
                child: RichText(
                  maxLines: isCurrent(index) ? 3 : 1,
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                      text: pokeList[index].content.getOrError(),
                      style: GoogleFonts.roboto(fontSize: 16, color:getStateColor(index) )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Flexible _buildTime(int index, BuildContext context) {
    return Flexible(
      flex: 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: isCurrent(index) ? 74 : 90,
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildStaticTimeArea(index, context),
                // const VerticalDivider(thickness: 2,),
              ],
            ),
          ),
          isLast(index) ? const SizedBox() : _buildAnimatedLine(index),
        ],
      ),
    );
  }

  AnimatedContainer _buildAnimatedLine(int index) {
    return AnimatedContainer(
        alignment: Alignment.center,
        duration: kThemeAnimationDuration,
        height: isCurrent(index) ? 90.0 : 0.0,
        child: VerticalDivider(
          thickness: 2,
          width: 2,
          color: _lineColor,
        ));
  }

  Column _buildStaticTimeArea(int index, BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        isCurrent(index) ? SizedBox() : _buildLine(),
        SizedBox(
          height: 58,
          child: Container(
            child: Text(pokeList[index].time.getOrError().toTimeAsString,
                style: GoogleFonts.marvel(
                  fontSize: 48,
                  color: getStateColor(index),
                )),
          ),
        ),
        isLast(index)
            ? const SizedBox(
                height: 16,
              )
            : _buildLine(),
      ],
    );
  }

  SizedBox _buildLine() {
    return SizedBox(
      height: 16,
      child: VerticalDivider(
        thickness: 2,
        width: 2,
        color: _lineColor,
      ),
    );
  }

  getStateColor(int index) {
    return isActive(index)
        ? Colors.black87
        : isNext(index)
            ? Colors.black54
            : Colors.black26;
  }
}
