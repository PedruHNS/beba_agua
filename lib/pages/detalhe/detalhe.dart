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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nome: ${pessoa.nome}'),
            Text('Peso: ${pessoa.peso} Kg'),
            Text('ingerir: ${pessoa.ml} Ml'),
            Text('Qtd de Garrafas: ${pessoa.garrafa!.floor()}'),
            Text('Qtd de Copos: ${pessoa.copos!.floor()}'),
          ],
        ),
      ),
    );
  }
}
