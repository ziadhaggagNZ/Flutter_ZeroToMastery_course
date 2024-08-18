import 'package:flutter/material.dart';
import 'package:flutter_basics/application/theme_service.dart';
import 'package:flutter_basics/presentation/navigation_example_screens/screen_one.dart';
import 'package:flutter_basics/presentation/navigation_example_screens/screen_two.dart';
import 'package:flutter_basics/root_bottom_navigation.dart';
import 'package:flutter_basics/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeService(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(builder: (context, themeService, child) {
      return MaterialApp(
        themeMode: themeService.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        home: const RootBottomNavigation(),
        routes: <String, WidgetBuilder>{
          '/root': (BuildContext context) => const RootBottomNavigation(),
          '/screenOne': (BuildContext context) => const ScreenOne(),
          '/screenTwo': (BuildContext context) => const ScreenTwo(),
        },
      );
    });
  }
}