import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile/app/bloc/app_bloc.dart';
import 'package:mobile/app/router/app_router.dart';
import 'package:mobile/app/router/app_router.gr.dart';
import 'package:mobile/app/theme/app_theme.dart';
import 'package:mobile/core/cache/cache_client.dart';
import 'package:mobile/core/utils/bloc/app_bloc_observer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObserver();

  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );
  runApp(DartFrogPlayground());
}

class DartFrogPlayground extends StatelessWidget {
  DartFrogPlayground({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppBloc(cacheClient: CacheClient.instance)..add(const AppEvent.checkAuthState()),
      child: BlocBuilder<AppBloc, AppState>(
        builder: (context, authState) {
          final routes = <PageRouteInfo<dynamic>>[];

          authState.map(
            unauthenticated: (_) => routes.add(const UnauthWrapperRoute()),
            authenticated: (_) => routes.add(const AuthWrapperRoute()),
          );

          return MaterialApp.router(
            title: 'Dart Frog Playground',

            // Theme
            theme: AppTheme().appTheme,

            // Routing
            routerDelegate: AutoRouterDelegate.declarative(_appRouter, routes: (_) => routes),
            routeInformationParser: _appRouter.defaultRouteParser(),
          );
        },
      ),
    );
  }
}
