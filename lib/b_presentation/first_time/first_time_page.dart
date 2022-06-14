import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:sardunya/a_core/router/app_router.gr.dart';

// This screen shows users when they log in fist time.
class FirstTimePage extends StatelessWidget {
  const FirstTimePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.router.push(const HomeRoute()),
      child: Container(alignment: Alignment.center,
        child: Text(
          'Welcome',
          style: Theme.of(context).textTheme.headline3,
        ),
      ),
    );
  }
}
