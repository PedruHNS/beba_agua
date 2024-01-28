import 'package:beba_agua/model/pessoa.dart';
import 'package:flutter/material.dart';

class Detalhe extends StatelessWidget {
  final Pessoa pessoa;
  const Detalhe({super.key, required this.pessoa});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('detalhe'),
      ),
      body: Column(children: [
        Text('${pessoa.nome}'),
        Text('${pessoa.peso}'),
        Text('${pessoa.ml}'),
        Text('${pessoa.garrafa}'),
        Text('${pessoa.copos}'),
      ]),
    );
  }
}
