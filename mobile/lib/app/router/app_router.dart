import 'package:auto_route/annotations.dart';
import 'package:auto_route/empty_router_widgets.dart';

import 'package:mobile/feature/auth/login/presentation/view/login_view.dart';
import 'package:mobile/feature/auth/register/presentation/view/register_view.dart';
import 'package:mobile/feature/index_view.dart';
import 'package:mobile/feature/profile/presentation/view/profile_view.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: [
    splash,
    unauthenticated,
    authenticated,
  ],
)
class $AppRouter {}

const splash = AutoRoute(
  name: 'SplashRouter',
  page: EmptyRouterPage,
  children: [
    AutoRoute(initial: true, page: IndexView),
    RedirectRoute(path: '*', redirectTo: ''),
  ],
);

const unauthenticated = AutoRoute(
  name: 'UnauthenticatedRoutes',
  page: EmptyRouterPage,
  children: [
    AutoRoute(initial: true, page: LoginView),
    AutoRoute(page: RegisterView),
    RedirectRoute(path: '*', redirectTo: ''),
  ],
);

const authenticated = AutoRoute(
  name: 'AuthenticatedRoutes',
  page: EmptyRouterPage,
  children: [
    AutoRoute(initial: true, page: ProfileView),
    RedirectRoute(path: '*', redirectTo: ''),
  ],
);
