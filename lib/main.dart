import 'package:app_login/app_controller.dart';
import 'package:app_login/login_page.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              brightness: AppController.instance.isDarkTheme
                  ? Brightness.dark
                  : Brightness.light,
              primarySwatch: Colors.purple,
            ),
            initialRoute: '/',
            routes: {
              '/': (context) => const LoginPage(),
              '/home': (context) =>const  HomePage(),
            },
          );
        });
  }
}