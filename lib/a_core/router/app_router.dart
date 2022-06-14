import 'package:auto_route/auto_route.dart';
import 'package:sardunya/b_presentation/first_time/first_time_page.dart';
import 'package:sardunya/b_presentation/main/home_page/home_page.dart';
import 'package:sardunya/b_presentation/splash/splash_page.dart';
// initialize Routes
@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: SplashPage,
      initial: true,
    ),
    AutoRoute(
      page: FirstTimePage,
    ),
    AutoRoute(
      page: HomePage,
      // initial: true,
    ),
  ],
)
//Generating class
class $AppRouter {}
