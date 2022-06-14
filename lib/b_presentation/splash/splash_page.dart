import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sardunya/a_core/router/app_router.gr.dart';
import 'package:sardunya/c_application/user_profile/user_profile_cubit.dart';


class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      //Profile checking section
     return BlocListener<UserProfileCubit, UserProfileState>(
      listener: (context, state) {
        state.map(
          initial: (_) {
            
          },
          loadingProgress: (_) {
            
          },
          loadingSuccess: (val) {
            val.profile.isFirst
                // if this login is first to be guided this route ↓
                ? context.router.replace(const FirstTimeRoute())
                : context.router.replace(const HomeRoute());
          },
          loadingFailure: (_) {
              
          },
        );
      },
      child: const Center(
        child: CircularProgressIndicator(),
      ),
    );

  }
}
   