import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile/feature/auth/login/presentation/view/login_view.dart';
import 'package:mobile/locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Bloc.observer = AppBlocObserver();

  initServices();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const DartFrogPlayground());
}

class DartFrogPlayground extends StatelessWidget {
  const DartFrogPlayground({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Dart Frog Playground',
      debugShowCheckedModeBanner: false,
      home: LoginView(),
    );
  }
}
