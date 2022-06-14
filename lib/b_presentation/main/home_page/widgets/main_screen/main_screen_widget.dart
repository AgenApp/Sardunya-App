import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sardunya/b_presentation/main/home_page/widgets/form_dss_widget.dart';
import 'package:sardunya/b_presentation/main/home_page/widgets/main_screen/body_widget.dart';
import 'package:sardunya/d_domain/poke/poke.dart';

class MainScreenWidget extends StatelessWidget {
  const MainScreenWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildAppBar(context),
        body: const BodyWidget());
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ),
        toolbarHeight: 61,
        elevation: 0,
        backgroundColor: Color(0xffff6868),
        title: Text(
          "SARDUNYA",
          style:
              GoogleFonts.marvel(fontSize: 34, fontWeight: FontWeight.bold),
        ),
        actions: [
          // Poke Creater |  Triggerer model bottom sheet
           _buildOutlineIcon(context)
        ],
      );
  }

  Widget _buildOutlineIcon(BuildContext context)  {
    return IconButton(
            onPressed: () async {
              await _buildShowModalBottonSheet(context);
            },
            icon: const Icon(Icons.add_box_outlined),
            iconSize: 34,
          );
  }

  Future<dynamic> _buildShowModalBottonSheet(BuildContext context) {
    return showModalBottomSheet(
                isDismissible: true,
                context: context,
                isScrollControlled: true,
                backgroundColor: Color.fromRGBO(0, 0, 0, 0),
                builder: (contex) => FormDSS(poke: Poke.empty()),
              );
  }
}
