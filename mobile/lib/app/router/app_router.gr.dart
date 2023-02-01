// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../../feature/auth/login/presentation/view/login_view.dart' as _i1;
import '../../feature/auth/register/presentation/view/register_view.dart'
    as _i2;
import '../../feature/profile/presentation/view/profile_view.dart' as _i3;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.LoginView(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.RegisterView(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.ProfileView(),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          LoginRoute.name,
          path: '/',
        ),
        _i4.RouteConfig(
          RegisterRoute.name,
          path: '/register-view',
        ),
        _i4.RouteConfig(
          ProfileRoute.name,
          path: '/profile-view',
        ),
      ];
}

/// generated route for
/// [_i1.LoginView]
class LoginRoute extends _i4.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i2.RegisterView]
class RegisterRoute extends _i4.PageRouteInfo<void> {
  const RegisterRoute()
      : super(
          RegisterRoute.name,
          path: '/register-view',
        );

  static const String name = 'RegisterRoute';
}

/// generated route for
/// [_i3.ProfileView]
class ProfileRoute extends _i4.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: '/profile-view',
        );

  static const String name = 'ProfileRoute';
}
