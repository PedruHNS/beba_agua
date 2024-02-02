import 'package:beba_agua/model/pessoa.dart';

sealed class StateListPessoas {
  final List<Pessoa> pessoas;

  StateListPessoas({required this.pessoas});
}

final class StateListPessoaInitial extends StateListPessoas {
  StateListPessoaInitial({required super.pessoas});
}

final class StateListPessoaAdd extends StateListPessoas {
  StateListPessoaAdd({required super.pessoas});
}

final class StateListPessoaDelete extends StateListPessoas {
  StateListPessoaDelete({required super.pessoas});
}

final class StateListPessoaLoad extends StateListPessoas {
  StateListPessoaLoad({required super.pessoas});
}
