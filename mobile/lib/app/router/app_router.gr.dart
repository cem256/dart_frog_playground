// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:mobile/app/router/wrappers/auth_wrapper_view.dart' as _i1;
import 'package:mobile/app/router/wrappers/unauth_wrapper_view.dart' as _i5;
import 'package:mobile/feature/auth/login/presentation/view/login_view.dart'
    as _i2;
import 'package:mobile/feature/auth/register/presentation/view/register_view.dart'
    as _i4;
import 'package:mobile/feature/profile/presentation/view/profile_view.dart'
    as _i3;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    AuthWrapperRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthWrapperView(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.LoginView(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.ProfileView(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.RegisterView(),
      );
    },
    UnauthWrapperRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.UnauthWrapperView(),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthWrapperView]
class AuthWrapperRoute extends _i6.PageRouteInfo<void> {
  const AuthWrapperRoute({List<_i6.PageRouteInfo>? children})
      : super(
          AuthWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthWrapperRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.LoginView]
class LoginRoute extends _i6.PageRouteInfo<void> {
  const LoginRoute({List<_i6.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ProfileView]
class ProfileRoute extends _i6.PageRouteInfo<void> {
  const ProfileRoute({List<_i6.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.RegisterView]
class RegisterRoute extends _i6.PageRouteInfo<void> {
  const RegisterRoute({List<_i6.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.UnauthWrapperView]
class UnauthWrapperRoute extends _i6.PageRouteInfo<void> {
  const UnauthWrapperRoute({List<_i6.PageRouteInfo>? children})
      : super(
          UnauthWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'UnauthWrapperRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
