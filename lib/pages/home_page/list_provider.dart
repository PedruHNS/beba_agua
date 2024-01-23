import 'package:beba_agua/model/pessoa.dart';
import 'package:beba_agua/pages/home_page/state_list.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final listPessoasProvider =
    StateNotifierProvider<ListPessoaNotifier, StateListPessoas>((ref) {
  return ListPessoaNotifier();
});

class ListPessoaNotifier extends StateNotifier<StateListPessoas> {
  ListPessoaNotifier() : super(StateListPessoaInitial(pessoas: []));

  void add(Pessoa pessoa) {
    final lista = [...state.pessoas, pessoa];

    state = StateListPessoaAdd(pessoas: lista);
  }
}
