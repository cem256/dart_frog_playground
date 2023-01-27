import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:mobile/core/utils/bloc/app_bloc_observer.dart';
import 'package:mobile/locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObserver();

  initServices();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const DartFrogPlayground());
}

class DartFrogPlayground extends StatelessWidget {
  const DartFrogPlayground({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dart Frog Playground',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
