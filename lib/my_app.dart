import 'package:beba_agua/model/pessoa.dart';
import 'package:beba_agua/pages/calcular_page/calcular_page.dart';
import 'package:beba_agua/pages/detalhe.dart';
import 'package:beba_agua/pages/home_page/home_page.dart';
import 'package:beba_agua/pages/notfound.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute: (RouteSettings settings) {
        if (settings.name == '/') {
          return MaterialPageRoute(builder: (context) => const HomePage());
        } else if (settings.name == '/detalhe') {
          final Pessoa parametro = settings.arguments as Pessoa;
          return MaterialPageRoute(
              builder: (context) => Detalhe(
                    pessoa: parametro,
                  ));
        } else if (settings.name == '/calcular') {
          return MaterialPageRoute(builder: (context) => const CalcularPage());
        } else {
          return MaterialPageRoute(builder: (context) => const Notfound());
        }
      },
    );
  }
}
