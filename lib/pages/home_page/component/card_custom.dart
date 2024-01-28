import 'package:beba_agua/model/pessoa.dart';
import 'package:flutter/material.dart';

class CardPessoaCustom extends StatelessWidget {
  final Pessoa pessoa;
  const CardPessoaCustom({super.key, required this.pessoa});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed('/detalhe', arguments: pessoa);
        },
        child: Card(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                'Nome: ${pessoa.nome}',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text('Peso: ${pessoa.peso} kg'),
            ),
          ],
        )),
      ),
    );
  }
}
