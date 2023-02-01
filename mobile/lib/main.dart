import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile/app/router/app_router.gr.dart';
import 'package:mobile/locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Bloc.observer = AppBlocObserver();

  initServices();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(DartFrogPlayground());
}

class DartFrogPlayground extends StatelessWidget {
  DartFrogPlayground({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Dart Frog Playground',

      debugShowCheckedModeBanner: false,

      // routing
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
