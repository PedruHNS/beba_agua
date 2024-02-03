import 'package:beba_agua/core/local_storage.dart';
import 'package:beba_agua/model/pessoa.dart';
import 'package:beba_agua/pages/home_page/providers/state_list.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final listPessoasProvider =
    StateNotifierProvider<ListPessoaNotifier, StateListPessoas>((ref) {
  return ListPessoaNotifier(ref.watch(dataBaseProvider));
});

class ListPessoaNotifier extends StateNotifier<StateListPessoas> {
  final ILocalStorage localStorage;
  ListPessoaNotifier(this.localStorage)
      : super(StateListPessoaInitial(pessoas: []));

  Future<void> add(Pessoa pessoa) async {
    await localStorage.save(pessoa.id!, pessoa.toJson());
    final lista = [...state.pessoas, pessoa];

    state = StateListPessoaAdd(pessoas: lista);
  }

  Future<void> loaded() async {
    final pessoas = await localStorage.load();
    state = StateListPessoaLoad(pessoas: pessoas);
  }

  Future<void> delete(String id) async {
    await localStorage.delete(id);
  }
}
