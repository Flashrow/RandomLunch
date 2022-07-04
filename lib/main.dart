import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:logger/logger.dart';
import 'package:random_lunch/src/presentation/views/base_screen.dart';

import 'injection.dart' as service_locator;

void main() async {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    try {
      await dotenv.load(fileName: ".env");
    } catch (e) {
      Logger().i("Dotenv not loaded");
      Logger().i(e);
    }
    service_locator.init();
    runApp(MyApp(key: navigatorKey));
  }, (error, stackTrace) {
    if (navigatorKey.currentContext != null) {
      ScaffoldMessenger.of(navigatorKey.currentContext!)
          .showSnackBar(const SnackBar(
        content: Text("Error occurred"),
      ));
    }
  });
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BaseScreen(),
    );
  }
}
