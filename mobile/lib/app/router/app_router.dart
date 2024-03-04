import 'package:auto_route/auto_route.dart';
import 'package:mobile/app/router/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
final class AppRouter extends $AppRouter {
  @override
  List<AdaptiveRoute> get routes => [
        AdaptiveRoute(
          initial: true,
          page: UnauthWrapperRoute.page,
          children: [
            AdaptiveRoute(initial: true, page: LoginRoute.page),
            AdaptiveRoute(page: RegisterRoute.page),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
        AdaptiveRoute(
          page: AuthWrapperRoute.page,
          children: [
            AutoRoute(initial: true, page: ProfileRoute.page),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
      ];
}
