import 'package:beba_agua/model/pessoa.dart';
import 'package:beba_agua/pages/calcular_page/state_calcular.dart';
import 'package:beba_agua/pages/home_page/list_provider.dart';
import 'package:beba_agua/pages/home_page/state_list.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final calcularProvider =
    StateNotifierProvider<CalcularNotifier, StateCalcular>((ref) {
  return CalcularNotifier();
});

class CalcularNotifier extends StateNotifier<StateCalcular> {
  CalcularNotifier()
      : super(StateInitial(
            pessoa: Pessoa(
          nome: '',
          peso: 0.0,
          copos: 0,
          garrafa: 0,
          ml: 0,
        )));

  void calcular({required double peso, required String nome}) {
    final ml = 35 * peso;
    final garrafa = ml / 500;
    final copo = ml / 200;

    state = StateCalculado(
      pessoa: Pessoa(
        nome: nome,
        ml: ml,
        copos: copo,
        garrafa: garrafa,
        peso: peso,
      ),
    );
  }
}
