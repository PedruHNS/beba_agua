import 'package:beba_agua/model/pessoa.dart';
import 'package:beba_agua/pages/calcular_page/calcular_page.dart';
import 'package:beba_agua/pages/detalhe/detalhe.dart';
import 'package:beba_agua/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic>? routePage(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomePage());
      case '/calcular':
        return MaterialPageRoute(builder: (_) => const CalcularPage());
      case '/detalhe':
        final pessoa = settings.arguments as Pessoa;
        return MaterialPageRoute(builder: (_) => Detalhe(pessoa: pessoa));
      default:
        return null;
    }
  }
}
