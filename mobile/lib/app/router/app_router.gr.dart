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
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:auto_route/empty_router_widgets.dart' as _i1;
import 'package:flutter/material.dart' as _i7;

import '../../feature/auth/login/presentation/view/login_view.dart' as _i3;
import '../../feature/auth/register/presentation/view/register_view.dart'
    as _i4;
import '../../feature/index_view.dart' as _i2;
import '../../feature/profile/presentation/view/profile_view.dart' as _i5;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashRouter.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.EmptyRouterPage(),
      );
    },
    UnauthenticatedRoutes.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.EmptyRouterPage(),
      );
    },
    AuthenticatedRoutes.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.EmptyRouterPage(),
      );
    },
    IndexRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.IndexView(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.LoginView(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.RegisterView(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.ProfileView(),
      );
    },
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(
          SplashRouter.name,
          path: '/empty-router-page',
          children: [
            _i6.RouteConfig(
              IndexRoute.name,
              path: '',
              parent: SplashRouter.name,
            ),
            _i6.RouteConfig(
              '*#redirect',
              path: '*',
              parent: SplashRouter.name,
              redirectTo: '',
              fullMatch: true,
            ),
          ],
        ),
        _i6.RouteConfig(
          UnauthenticatedRoutes.name,
          path: '/empty-router-page',
          children: [
            _i6.RouteConfig(
              LoginRoute.name,
              path: '',
              parent: UnauthenticatedRoutes.name,
            ),
            _i6.RouteConfig(
              RegisterRoute.name,
              path: 'register-view',
              parent: UnauthenticatedRoutes.name,
            ),
            _i6.RouteConfig(
              '*#redirect',
              path: '*',
              parent: UnauthenticatedRoutes.name,
              redirectTo: '',
              fullMatch: true,
            ),
          ],
        ),
        _i6.RouteConfig(
          AuthenticatedRoutes.name,
          path: '/empty-router-page',
          children: [
            _i6.RouteConfig(
              ProfileRoute.name,
              path: '',
              parent: AuthenticatedRoutes.name,
            ),
            _i6.RouteConfig(
              '*#redirect',
              path: '*',
              parent: AuthenticatedRoutes.name,
              redirectTo: '',
              fullMatch: true,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.EmptyRouterPage]
class SplashRouter extends _i6.PageRouteInfo<void> {
  const SplashRouter({List<_i6.PageRouteInfo>? children})
      : super(
          SplashRouter.name,
          path: '/empty-router-page',
          initialChildren: children,
        );

  static const String name = 'SplashRouter';
}

/// generated route for
/// [_i1.EmptyRouterPage]
class UnauthenticatedRoutes extends _i6.PageRouteInfo<void> {
  const UnauthenticatedRoutes({List<_i6.PageRouteInfo>? children})
      : super(
          UnauthenticatedRoutes.name,
          path: '/empty-router-page',
          initialChildren: children,
        );

  static const String name = 'UnauthenticatedRoutes';
}

/// generated route for
/// [_i1.EmptyRouterPage]
class AuthenticatedRoutes extends _i6.PageRouteInfo<void> {
  const AuthenticatedRoutes({List<_i6.PageRouteInfo>? children})
      : super(
          AuthenticatedRoutes.name,
          path: '/empty-router-page',
          initialChildren: children,
        );

  static const String name = 'AuthenticatedRoutes';
}

/// generated route for
/// [_i2.IndexView]
class IndexRoute extends _i6.PageRouteInfo<void> {
  const IndexRoute()
      : super(
          IndexRoute.name,
          path: '',
        );

  static const String name = 'IndexRoute';
}

/// generated route for
/// [_i3.LoginView]
class LoginRoute extends _i6.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i4.RegisterView]
class RegisterRoute extends _i6.PageRouteInfo<void> {
  const RegisterRoute()
      : super(
          RegisterRoute.name,
          path: 'register-view',
        );

  static const String name = 'RegisterRoute';
}

/// generated route for
/// [_i5.ProfileView]
class ProfileRoute extends _i6.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: '',
        );

  static const String name = 'ProfileRoute';
}
