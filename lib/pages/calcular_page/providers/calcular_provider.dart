import 'package:beba_agua/model/pessoa.dart';
import 'package:beba_agua/pages/calcular_page/providers/state_calcular.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

final calcularProvider =
    StateNotifierProvider<CalcularNotifier, StateCalcular>((ref) {
  return CalcularNotifier();
});

class CalcularNotifier extends StateNotifier<StateCalcular> {
  CalcularNotifier() : super(StateInitial(pessoa: Pessoa()));

  void calcular({required double peso, required String nome}) {
    final ml = 35 * peso;
    final garrafa = ml / 500;
    final copo = ml / 200;

    final pessoa = Pessoa(
      id: const Uuid().v4(),
      nome: nome,
      ml: ml,
      copos: copo,
      garrafa: garrafa,
      peso: peso,
    );

    state = StateCalculado(pessoa: pessoa);
  }
}
