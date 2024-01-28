import 'package:beba_agua/routes/route.dart';
import 'package:beba_agua/theme/theme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: Themes.themeDefault,
      onGenerateRoute: Routes.routePage,
    );
  }
}
