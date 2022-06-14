import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sardunya/gen/assets.gen.dart';

class LandingScreenWidget extends HookWidget {
  const LandingScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var crossFadeState = useState(CrossFadeState.showFirst);
    // Kind of future builder
    Future.delayed(const Duration(milliseconds: 1000))
        .then((value) => crossFadeState.value = CrossFadeState.showSecond);

    return _buildBody(crossFadeState);
  }

  Scaffold _buildBody(ValueNotifier<CrossFadeState> crossFadeState) {
    return Scaffold(
        backgroundColor: Colors.black87,
        body: LayoutBuilder(
          builder: (context, constraints) {
            //Transform effect
            return _buidCrossFade(constraints, crossFadeState);
          },
        ));
  }

  AnimatedCrossFade _buidCrossFade(BoxConstraints constraints,
      ValueNotifier<CrossFadeState> crossFadeState) {
    return AnimatedCrossFade(
      crossFadeState: crossFadeState.value,
      duration: const Duration(milliseconds: 500),
      firstChild: Container(color: Colors.black87),
      secondChild: ConstrainedBox(
        constraints: BoxConstraints(
            maxHeight: constraints.maxHeight, maxWidth: constraints.maxHeight),
        // Static Elements
        child: _branchScreen(),
      ),
    );
  }

  Container _branchScreen() {
    return Container(
      alignment: Alignment.center,
      color: const Color(0xffff6868),
      child: Column(
        children: [
          Flexible(
            flex: 11,
            child: Align(
                alignment: Alignment.bottomCenter,
                child: _buildLogoContainer()),
          ),
          Flexible(
            flex: 9,
            child: Align(
                alignment: Alignment.bottomCenter, child: _buildByContainer()),
          )
        ],
      ),
    );
  }

  Widget _buildByContainer() {
    return Container(
      padding: const EdgeInsets.only(
        bottom: 24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "BY",
            style: GoogleFonts.marvel(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Text(
            "AHMET GENEL",
            style: GoogleFonts.marvel(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(
            width: 50,
            child: Divider(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLogoContainer() {
    return Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.white),
          borderRadius: const BorderRadius.all(Radius.circular(144 / 5)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(Assets.logos.sardunyaLogo512.path,
                width: 144, height: 144),
            SizedBox(height: 8),
            Text(
              "SARDUNYA",
              style: GoogleFonts.marvel(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )
          ],
        ));
  }
}
