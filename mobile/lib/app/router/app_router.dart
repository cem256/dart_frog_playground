import 'package:auto_route/annotations.dart';

import 'package:mobile/feature/auth/login/presentation/view/login_view.dart';
import 'package:mobile/feature/auth/register/presentation/view/register_view.dart';

import 'package:mobile/feature/profile/presentation/view/profile_view.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: [
    AutoRoute(initial: true, page: LoginView),
    AutoRoute(page: RegisterView),
    AutoRoute(page: ProfileView),
  ],
)
class $AppRouter {}
